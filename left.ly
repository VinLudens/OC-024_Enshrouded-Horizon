\version "2.24.3"
\include "global.ly"

left = \absolute {
  \global
  \key gis \minor
  \time 12/8


  \tuplet 2/3 { <cis cis'>8 <b, b>8 } ~ 4. \tuplet 2/3 { <gis, gis>8 <fis, fis>8 } ~ 4. |
  \ottava -1 fis,,1. \ottava 0 |

  \repeat segno 2 {
    \clef "bass" <fis, cis fis>4 <gis, dis gis> <ais, fis ais>  <b, fis b>4. <b,, b,> |
    <b, fis b>4 <cis gis cis'> <dis ais dis'> <e b e'>4. <e, e> |

    <e gis b e'>8 <dis dis'> <cis cis'> <dis ais dis'>4. <dis, dis>4. <dis ais dis'>8 <cis cis'> <b, b> |
    \time 9/8
    <cis, cis>4. \ottava -1 cis,,2. \ottava 0 |
    \time 12/8

    <fis, fis>4. <fis,, fis,> <fis cis'>2. |
    r1. |

    \bar "||"




    \repeat tremolo 28 { \ottava -1 gis,,32 gis, \ottava 0 } |
    \makePercent { s2. s1 } |
    \makePercent { s2. s1 } |




    \makePercent { s1 s1 } |
    \makePercent s1 |
    \ottava 0 \appoggiatura { e,,8 e, } \repeat tremolo 16 { e,32 b, } | \ottava 0




    \repeat tremolo 28 { e,32 b, } |




    \makePercent { s1 s1 } |




    \repeat percent 2 { \repeat tremolo 12 { e,32 b, } } \repeat tremolo 8 { \ottava -1 e,,32 e, } |




    \repeat tremolo 16 { e,,32 e, \ottava 0 } |
    \makePercent { s1 } |
    <cis,, cis,>4 \tuplet 7/4 4 { cis,16 gis, cis \change Staff = "right" \clef "treble" b dis' gis' b' \change Staff = "left" cis gis cis' \change Staff = "right" b' dis'' gis'' b'' } \change Staff = "right" r4 |
    \ottava 1 \tuplet 6/4 {\clef "treble" b'16 dis'' gis'' b'' dis''' gis'''} \change Staff = "left" <ais dis' gis' ais'>8\( <b dis' gis' b'> <ais dis' gis' ais'> <fis fis'> <dis dis'>\) r |

    \clef "bass" <e, e>4 <e gis b>2. |
    <cis, cis>4 <fis b dis'>2. |
    \alternative {
      \volta 1 {
        <e, b, e>2 <e gis b> ~ |
        1 |

        <cis, cis>1 |
        <cis e gis> |

        \bar "||"





        <b,, fis, b,>2. \voiceTwo <fis,, fis,>2 ~ |

        1 | \oneVoice


        <gis,, gis,>2. \voiceTwo <e,, e,>2 ~ |

        1. | \oneVoice











        \ottava -1 fis,,1. \ottava 0 |
        \clef "bass"  ais,8 b, ais, fis, dis, cis,  b,,4. <fis b dis'> |
        \clef "bass" fis8 gis fis cis ais, fis, e,4. <e gis b> |
        \clef "treble" <gis' b' e''>8 <fis' ais' dis''> <e' gis' cis''> <fis' ais' dis''>4. \clef "bass" <dis, dis>4. \clef "treble" <fis' ais' dis''>8 <e' gis' cis''> <dis' fis' b'> |
        \time 9/8
        <cis' e' ais'>4. \clef "bass" cis,2. |
        b,,4. <fis b dis'>2. |

        \time 12/8
        \once \set PianoStaff.connectArpeggios = ##t
        \clef "treble" <e'' gis'' b''>2.\arpeggio <fis' ais'> |
        <dis' fis' ais'>2. <gis dis'>4. c'' |
        cis'8 e' gis' cis'' \change Staff = "right" dis'' gis'' \change Staff = "left" \clef "bass" dis ais dis' fisis ais dis' |
        \clef "treble" b dis' fis' ais dis' fis' a dis' fis' a' dis'' fis'' |

        \time 6/8
        a''2. |
        \time 12/8
        e'8 gis' b' dis''4. fis'8 ais' cis'' fis''4. |
        \time 15/8
        dis'8 fis' ais' cis''4. a8 cis' e' a' e' cis' a4. |

        \key a \major
        \time 12/8
        \bar "||"

        \clef "bass" \tuplet 2/3 {  <e b e'>8\( <cis fis b cis'>8 } ~ 4. \tuplet 2/3 {  <a, e a>8 <e, b, e>8 } ~ 4.\) |
        \ottava -1 e,,1. \ottava 0 |

        \clef "bass" q4 <fis, cis fis> <gis, dis gis> <a, e a>4. <a,, a,> |
        <a, e a>4 <b, fis b> <cis gis cis'> <d a d'>4. <d, d> |

        <d d'>8 <cis cis'> <b, b> <cis cis'>4. <cis, cis> <cis cis'>8 <b, b> <a, a> |
        q8 <aes, aes> <a, a> <g, g>4. <g,, g,>2.  |
        <a, e a>2. a,, |

        \bar "||"
        \key gis \minor

        \tuplet 2/3 { <fis cis' fis'>8 <e b e'>8 } ~ 4. \tuplet 2/3 { <cis gis cis'>8 <b, fis b>8 } ~ 4. |
        \ottava -1 b,,1. \ottava 0 |

        \clef "bass" q4 <cis gis cis'> <dis ais dis'> <e b e'>4. <e, e> |
        <e b e'>4 <fis cis' fis'> <gis dis' gis'> <b fis' b'>8 <ais fis' ais'>4 ~ 4. |

        \ottava -1 <fis,, fis,>1. \ottava 0 |
      }
      \volta 2 {
        \section
        \sectionLabel "Coda"
      }
    }
  }

  \clef "bass" <e, b, e>2 <e gis b dis'> ~  |
  1 |
  <cis, cis>2 <cis e gis b>  |
  <<
    {
      \voiceTwo \tiny \change Staff = "right"
      s2 b''8 ais'' fis'' cis'' |
      e'' gis'' b'' cis''' b'' ais'' fis'' ais'' |
      fis'' dis'' b' cis'' b' ais' fis' ais' |
      fis' dis' b cis' b ais fis ais | \normalsize \change Staff = "left"
    }
    \new Voice {
      <b,, b,>1 ~ |
      1 ~ |
      1 ~ |
      1 ~ |
    }
  >> \oneVoice

  \ottava -1 <b,,, b,,>1 \ottava 0 |

  \bar "|."

}
