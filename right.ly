\version "2.24.3"
\include "global.ly"

right = \absolute {
  \global
  \key gis \minor
  \tempo "Andante" 4 = 72

  <e' gis' cis'' e''>8\( <dis' gis' cis'' dis''>8  ~ 4 <b dis' gis' b'>8 <ais dis' gis' ais'>8  ~ 4\) |
  r4 \stemDown ais32 dis' ais' \change Staff = "left" \clef "treble" \stemUp \ottava 0 dis'' ais'' dis''' \stemNeutral \change Staff = "right" \ottava 2 ais''' dis'''' ais''''2 \ottava 0 |

  \tuplet 3/2 { q4\( <b dis' gis' b'> <cis' fis' ais' cis''> } <dis' fis' ais' dis''>2 |
  \tuplet 3/2 { <dis' fis' ais' dis''>4 <e' gis' cis'' e''> <fis' ais' dis'' fis''> } <gis' b' dis'' gis''>4.\) q8\( |

  \tuplet 3/2 { q8 <fis' fis''> <e' e''> } <fis' ais' cis'' fis''>4 ~ q8\) q\( \tuplet 3/2 { q <e' e''> <dis' dis''> } |
  \time 3/4
  <dis' gis' ais' dis''>4 \tuplet 3/2 4 { r8 cis'' dis'' fis'' e'' dis'' } |
  \time 4/4

  <fis' b' dis''>2 <fis' ais' cis''>4 b'8 ais' |
  b'1 |

}
