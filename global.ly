\version "2.24.3"


global = {
  % \time 4/4
}

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%                            Isolated percent repeats
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%% https://lsr.di.unimi.it/LSR/Item?id=499

makePercent =
#(define-music-function (note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%                                 Compound Meter
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%% http://lsr.di.unimi.it/LSR/Item?id=743

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formatting of (possibly complex) compound time signatures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (insert-markups l m)
   (let* ((ll (reverse l)))
     (let join-markups ((markups (list (car ll)))
                        (remaining (cdr ll)))
       (if (pair? remaining)
           (join-markups (cons (car remaining) (cons m markups)) (cdr remaining))
           markups))))

% Use a centered-column inside a left-column, because the centered column
% moves its reference point to the center, which the left-column undoes.
#(define (format-time-fraction time-sig-fraction)
   (let* ((revargs (reverse (map number->string time-sig-fraction)))
          (den (car revargs))
          (nums (reverse (cdr revargs))))
     (make-override-markup '(baseline-skip . 0)
                           (make-number-markup
                            (make-left-column-markup (list
                                                      (make-center-column-markup (list
                                                                                  (make-line-markup (insert-markups nums "+"))
                                                                                  den))))))))

#(define (format-complex-compound-time time-sig)
   (let* ((sigs (map format-time-fraction time-sig)))
     (make-override-markup '(baseline-skip . 0)
                           (make-number-markup
                            (make-line-markup
                             (insert-markups sigs (make-vcenter-markup "+")))))))

#(define-public (format-compound-time time-sig)
   (cond
    ((not (pair? time-sig)) (null-markup))
    ((pair? (car time-sig)) (format-complex-compound-time time-sig))
    (else (format-time-fraction time-sig))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Measure length calculation of (possibly complex) compound time signatures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (calculate-time-fraction time-sig-fraction)
   (let* ((revargs (reverse time-sig-fraction))
          (den (car revargs))
          (num (apply + (cdr revargs))))
     (ly:make-moment num den)))

#(define (calculate-complex-compound-time time-sig)
   (let* ((sigs (map calculate-time-fraction time-sig)))
     (let add-moment ((moment ZERO-MOMENT)
                      (remaining sigs))
       (if (pair? remaining)
           (add-moment (ly:moment-add moment (car remaining)) (cdr remaining))
           moment))))

#(define-public (calculate-compound-measure-length time-sig)
   (cond
    ((not (pair? time-sig)) (ly:make-moment 4/4))
    ((pair? (car time-sig)) (calculate-complex-compound-time time-sig))
    (else (calculate-time-fraction time-sig))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Base beat lenth: Use the smallest denominator from all fraction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (calculate-compound-base-beat-full time-sig)
   (apply max (map last time-sig)))

#(define-public (calculate-compound-base-beat time-sig)
   (ly:make-moment 1 (cond
                      ((not (pair? time-sig)) 4)
                      ((pair? (car time-sig)) (calculate-compound-base-beat-full time-sig))
                      (else (calculate-compound-base-beat-full (list time-sig))))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Beat Grouping
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



#(define (normalize-fraction frac beat)
   (let* ((thisbeat (car (reverse frac)))
          (factor (/ beat thisbeat)))
     (map (lambda (f) (* factor f)) frac)))

#(define (beat-grouping-internal time-sig)
   ; Normalize to given beat, extract the beats and join them to one list
   (let* ((beat (calculate-compound-base-beat-full time-sig))
          (normalized (map (lambda (f) (normalize-fraction f beat)) time-sig))
          (beats (map (lambda (f) (reverse (cdr (reverse f)))) normalized)))
     (apply append beats)))

#(define-public (calculate-compound-beat-grouping time-sig)
   (cond
    ((not (pair? time-sig)) '(2 . 2))
    ((pair? (car time-sig)) (beat-grouping-internal time-sig))
    (else (beat-grouping-internal (list time-sig)))))





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The music function to set the complex time signature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

compoundMeter =
#(define-music-function (args) (pair?)
   "Create compound time signatures. The argument is a Scheme list of "
   "lists. Each list describes one fraction, with the last entry being the "
   "denominator, while the first entries describe the summands in the "
   "enumerator. If the time signature consists of just one fraction, "
   "the list can be given directly, i.e. not as a list containing a single list."
   "For example, a time signature of (3+1)/8 + 2/4 would be created as "
   "@code{\\compoundMeter #'((3 1 8) (2 4))}, and a time signature of (3+2)/8 "
   "as @code{\\compoundMeter #'((3 2 8))} or shorter "
   "@code{\\compoundMeter #'(3 2 8)}."
   (let* ((mlen (calculate-compound-measure-length args))
          (beat (calculate-compound-base-beat args))
          (beatGrouping (calculate-compound-beat-grouping args))
          (timesig (cons (ly:moment-main-numerator mlen)
                         (ly:moment-main-denominator mlen))))
     #{
       \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
       \once \override Staff.TimeSignature.text = #(format-compound-time args)
       \set Timing.timeSignatureFraction = $timesig
       \set Timing.baseMoment = $beat
       \set Timing.beatStructure = $beatGrouping
       \set Timing.beamExceptions = #'()
       \set Timing.measureLength = $mlen
     #} ))


%{
Some other usefull commands

Staves -------------------------------------------------------------------------

Use this to put notes into another staff
  \change Staff = "left" \voiceOne

Notes --------------------------------------------------------------------------

Use this to merge heads
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn

Feathered beams for in-/decreasing tempo
  \override Beam.grow-direction = #LEFT or #RIGHT or #'()
  \featherDurations #(ly:make-moment f/l) { music expr }
NOTE: f/l represents the ratio between the durations of the
      first and last notes in the group

Arpeggios ----------------------------------------------------------------------

Use this to create cross-staff arpeggios
  \once \set PianoStaff.connectArpeggios = ##t

Using ties with arpeggios
  \set tieWaitForNote = ##t

Shape of Ties in Chords --------------------------------------------------------

Bug Report: https://gitlab.com/lilypond/lilypond/-/issues/1789
Using the '[-]\shape displacements item' command on a tie within a chord will
only apply the shape to the first tie. Workaround proposed in the Bug Report is
to set the ties explicitly such that we can avoid using the TieColumn object.

  < c~ e~ g~ > \once\override Tie.Column.positioning-done = #'() q

NOTE from bug report:
if we use \once, we have to put it at the time-step where the ties *complete*

Modifying broken spanners ------------------------------------------------------

Use the following to modify the parts of a broken spanner (i.e. line break)
  [-]\alterBroken property values item
This is an example of repositioning a broken phrasing slur
  \once\alterBroken positions #'((2.5 . 4) (5 . 2.5)) PhrasingSlur

Collision ----------------------------------------------------------------------

use this to suppress the warning about clashing notes. Please note that this
does not just suppress warnings but stops LilyPond trying to resolve
collisions at all and so may have unintended results unless used with care.

  ignore = \override NoteColumn.ignore-collision = ##t
use: \ignore { ... }

Ottavation ---------------------------------------------------------------------

http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches#ottava-brackets
Use this if you have multiple voices and an ottava that makes unwanted displacements.

  --> normal music
  \set Staff.ottavation = #"8vb"
  \once \override Staff.OttavaBracket.direction = #DOWN
  \set Voice.middleCPosition = #(+ 6 7)
  --> "ottavated" music
  \unset Staff.ottavation
  \unset Voice.middleCPosition
  --> normal music
%}
