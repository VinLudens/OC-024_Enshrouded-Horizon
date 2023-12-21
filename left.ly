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

}
