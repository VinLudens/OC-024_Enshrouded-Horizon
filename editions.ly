\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
\addEdition fingering
\addEdition dynamics

% \editionMod dynamics 22 3/8 music.Dynamics \mp
\editionMod dynamics 1 0/8 music.Dynamics \mp

\editionMod dynamics 2 3/8 music.Voice.A \tiny

\editionMod dynamics 3 0/8 music.Dynamics \<
\editionMod dynamics 3 0/8 music.Voice.A \normalsize

\editionMod dynamics 4 6/8 music.Dynamics \mf

\editionMod dynamics 5 15/16 music.Dynamics \>

\editionMod dynamics 6 0/8 music.Dynamics \p

\editionMod tweaks 8 0/4 music.Voice.A \once\override Tie.layer = #-2

\editionMod dynamics 9 0/8 music.Dynamics \mp
\editionMod tweaks 9 0/4 music.Voice.A \once\override Staff.TimeSignature.whiteout = #3
\editionMod tweaks 9 0/4 music.Voice.A \once\override Staff.TimeSignature.layer = #-1

\editionMod dynamics 13 0/8 music.Dynamics \<

\editionMod dynamics 14 0/8 music.Dynamics \f
\editionMod dynamics 14 0/8 music.Dynamics \>

\editionMod dynamics 15 0/8 music.Dynamics \!

\editionMod dynamics 18 0/8 music.Dynamics \<

\editionMod tweaks 19 1/4 music.Voice.A \once \shape #'((0 . -1.2) (0 . -1) (0 . -0.5) (0 . 0)) PhrasingSlur

\editionMod dynamics 20 0/8 music.Dynamics \sff
\editionMod dynamics 20 0/8 music.Voice.A -^
\editionMod dynamics 20 0/8 music.Voice.B -^
\editionMod dynamics 20 3/4 music.Voice.A -^

\editionMod dynamics 23 3/4 music.Dynamics \mp

\editionMod tweaks 27 3/4 music.Voice.A \once \shape #'((0 . 0) (3 . -4) (-3 . 11) (0 . 3)) PhrasingSlur

\editionMod dynamics 29 0/4 music.Voice.C \tiny
\editionMod tweaks 29 3/4 music.Voice.A \once \shape #'(() ((0 . 0) (2 . -3) (0 . 10) (0 . 3))) PhrasingSlur

\editionMod dynamics 32 3/8 music.Voice.A \tiny
\editionMod tweaks 32 3/8 music.Voice.A \once\override Beam.positions = #'(-6.5 . -2.5)

\editionMod dynamics 33 0/8 music.Voice.A \normalsize
\editionMod dynamics 33 0/8 music.Dynamics \<
\editionMod dynamics 33 6/8 music.Dynamics \!

\editionMod dynamics 34 0/8 music.Dynamics \<
\editionMod dynamics 34 6/8 music.Dynamics \mf

\editionMod dynamics 36 4/8 music.Dynamics \>

\editionMod dynamics 38 0/8 music.Dynamics \pp

\editionMod dynamics 44 6/8 music.Dynamics \<
\editionMod dynamics 44 9/8 music.Dynamics \>
\editionMod dynamics 44 12/8 music.Dynamics \!

\editionMod dynamics 45 0/8 music.Dynamics \mp
\editionMod tweaks 45 0/4 music.Voice.A \once \shape #'((0 . 0) (-1 . -1) (0 . 0) (0 . 0)) PhrasingSlur

\editionMod dynamics 47 0/8 music.Dynamics \<

\editionMod dynamics 48 6/8 music.Dynamics \mf

\editionMod dynamics 50 3/8 music.Dynamics \>

\editionMod dynamics 51 0/8 music.Dynamics \p

\editionMod tweaks 53 3/8 music.Voice.A \once\override Beam.positions = #'(-6.5 . -2.5)

\editionMod dynamics 54 0/8 music.Dynamics \<

\editionMod dynamics 55 6/8 music.Dynamics \!

\editionMod dynamics 56 0/8 music.Dynamics \fp
\editionMod tweaks 56 3/8 music.Voice.A \once\override Beam.positions = #'(-8 . -4)

\editionMod tweaks 57 0/4 music.Voice.A -"TODO: slur out of repeat"

\editionMod dynamics 60 0/8 music.Dynamics \p
