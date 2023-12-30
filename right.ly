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

  <fis' b' dis''>2 <fis' ais' cis''>4.\fermata b'16 ais' |
  b'1\) ~ |

  \bar "||"
  \change Staff = "left" \compoundMeter #'(3 4 4)
  \change Staff = "right" \compoundMeter #'(3 4 4)
  \tempo "Allegro" 4 = 140

  2. ais'2 fis' |
  \clef "bass" dis'8\( e' dis' b fis ais gis2 fis\) |
  dis'8\( e' dis' b fis ais gis2 fis\) |

  \change Staff = "left" \compoundMeter #'(4 4 4)
  \change Staff = "right" \compoundMeter #'(4 4 4)

  dis'8\( e' fis' e' dis' b fis ais gis2 fis \) |
  \time 4/4 dis'8\( e' ais' b' ais' fis' dis' cis' |
  <fis b dis'>2 <fis cis'>\) |

  \change Staff = "left" \compoundMeter #'(3 4 4)
  \change Staff = "right" \compoundMeter #'(3 4 4)

  ais8\( b ais fis dis cis dis2 cis2\) |

  \change Staff = "left" \compoundMeter #'(4 4 4)
  \change Staff = "right" \compoundMeter #'(4 4 4)

  ais8\( b cis' b ais fis dis cis \acciaccatura fis16 dis2 cis\) |

  \change Staff = "left" \compoundMeter #'(3 5 4)
  \change Staff = "right" \compoundMeter #'(3 5 4)

  ais8\( b cis' dis' ais ais  \acciaccatura cis'16 ais2 gis2.\) |

  \change Staff = "left" \time 4/4
  \change Staff = "right" \time 4/4

  <b, b>4\( <cis cis'>4.\) <dis dis'>4\( <e e'>8 ~ |
  q4\) <fis fis'>4\( <gis gis'> <ais ais'> |
  <b dis' gis' b'>2. \change Staff = "left" \clef "treble" <ais dis' gis' ais'>4 ~ |
  q\) \change Staff = "right" \clef "treble" <ais'' dis''' gis''' ais'''>8\( <b'' dis''' gis''' b'''> <ais'' dis''' gis''' ais'''> <fis'' fis'''> <dis'' dis'''> <gis'' gis'''> |

  <fis'' ais'' cis''' fis'''>4.\) \ottava 0 b'8\( b' b' b' cis'' |
  <fis' b' dis''>2 cis''4\) ais'8\( b' |
  ais' fis' dis' cis' dis'2 ~ |
  2\) b8\( b b cis' |

  <gis b fis'>2 r8 e'8 dis' e' |
  <b dis'>2.\) \clef "bass" cis'8\( b |

  \bar "||"

  <<
    {
      \change Staff = "left" \compoundMeter #'(3 2 4)
      \change Staff = "right" \compoundMeter #'(3 2 4)
      ais b ais fis dis cis dis2 |
      \time 4/4
      \change Staff = "left" \voiceOne cis2.\) \change Staff = "right" \oneVoice \clef "bass" ais8\( b
      \change Staff = "left" \compoundMeter #'(3 2 4)
      \change Staff = "right" \compoundMeter #'(3 2 4)
      cis' b ais fis dis cis fis2 |
      \time 4/4
      \change Staff = "left" \voiceOne dis2\) r \change Staff = "right" \oneVoice |
    }
    \new Voice {
      \voiceOne
      r2. r2 |
      \tuplet 3/2 { \clef "treble" \ottava 1 <cis''' ais'''>8 <b'' gis'''> <fis'' ais''> } <cis'' gis''>2\fermata \ottava 0 r4 |
      r2. r2 |
      \tempo "Tempo I" 4 = 72
      \ottava 1 \clef "treble" <gis'' b'' e'''>8\( <fis'' b'' dis'''>8  ~ 4 <dis'' fis'' b''>8 <cis'' fis'' ais''>8  ~ 4\fermata\) \ottava 0 |
    }
  >> \oneVoice

  r4 \stemDown ais32 dis' ais' \change Staff = "left" \clef "treble" \stemUp \ottava 0 dis'' ais'' dis''' \stemNeutral \change Staff = "right" \ottava 2 ais''' dis'''' ais''''2 \ottava 0 |
  \tuplet 3/2 { \ottava 1 q4\( <dis'' fis'' b''> <fis'' ais'' cis'''> } <fis'' b'' dis'''>2 |
  \tuplet 3/2 { q4 <gis'' b'' e'''> <ais'' cis''' fis'''> } <b'' dis''' gis'''>4\) \ottava 0 <dis' e' gis'>8 \ottava 1 <b'' dis''' gis'''>\( |
  \tuplet 3/2 { q8 <ais'' cis''' fis'''> <gis'' b'' e'''> } <ais'' cis''' fis'''>4 ~ q8\) q\( \tuplet 3/2 { q <gis'' b'' e'''> <fis'' ais'' dis'''> } |
  \time 3/4
  <e'' ais'' dis'''>4 \tuplet 3/2 4 { r8 cis''' dis''' fis''' e''' dis''' } |
  <fis'' b'' dis'''>4 \tuplet 3/2 4 { r8 cis''' dis''' fis''' e''' dis''' } |


  <dis''' e''' gis'''>\arpeggio\)

}
