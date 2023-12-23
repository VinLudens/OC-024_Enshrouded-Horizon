\version "2.24.3"
\include "global.ly"

left = \absolute {
  \global
  \key gis \minor


  <cis cis'>8 <b, b>8 ~ 4 <gis, gis>8 <fis, fis>8 ~ 4 |
  \ottava -1 fis,,1 \ottava 0 |

  \clef "bass" \tuplet 3/2 { <fis, cis fis>4 <gis, dis gis> <ais, fis ais> } <b, fis b>4 <b,, b,> |
  \tuplet 3/2 { <b, fis b>4 <cis gis cis'> <dis ais dis'> } <e b e'>4 <e, e> |

  \tuplet 3/2 { <e gis b e'>8 <dis dis'> <cis cis'> } <dis ais dis'>4 <dis, dis>4 \tuplet 3/2 { <dis ais dis'>8 <cis cis'> <b, b> } |
  \time 3/4
  <cis, cis>4 cis,,2 |
  \time 4/4

  <fis, fis>4 <fis,, fis,> <fis cis'>2 |
  r1 |

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
  <e, e>

}
