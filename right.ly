\version "2.24.3"
\include "global.ly"

right = \absolute {
  \global
  \key gis \minor
  \time 12/8
  \tempo "Andantino" 4. = 80

  \tuplet 2/3 { <e' gis' cis'' e''>8\( <dis' gis' cis'' dis''>8 } ~ 4. \tuplet 2/3 { <b dis' gis' b'>8 <ais dis' gis' ais'>8 } ~ 4.\) |
  r4. \stemDown \tuplet 8/6 { ais16 dis' ais' \change Staff = "left" \clef "treble" \stemUp \ottava 0 dis'' ais'' dis''' \stemNeutral \change Staff = "right" \ottava 2 ais''' dis'''' } ais''''2. \ottava 0 |

  \repeat segno 2 {
    q4\( <b dis' gis' b'> <cis' fis' ais' cis''> <dis' fis' ais' dis''>2. |
    <dis' fis' ais' dis''>4 <e' gis' cis'' e''> <fis' ais' dis'' fis''> <gis' b' dis'' gis''>4. ~ \tuplet 2/3 { q8\) q8\( } |

    q8 <fis' fis''> <e' e''>  <fis' ais' cis'' fis''>4. ~ \tuplet 2/3 { q8\) q\( } q8 <e' e''> <dis' dis''> |
    \time 9/8
    <dis' gis' ais' dis''>4. r8 cis'' dis'' fis'' e'' dis''  |
    \time 12/8

    <fis' b' dis''>2. <fis' ais' cis''>4.\fermata r8 b' ais' |
    b'1.\) ~ |

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
    \time 4/4 \clef "treble" dis'8\( e' ais' b' ais' fis' dis' cis' | \clef "bass"
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
    \alternative {
      \volta 1 {
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
            \time 12/8
            \change Staff = "left" \voiceOne dis2.\) r \change Staff = "right" \oneVoice |
          }
          \new Voice {
            \voiceOne
            s2. s2 |
            \tuplet 3/2 { \clef "treble" \ottava 1 <cis''' ais'''>8 <b'' gis'''> <fis'' ais''> } <cis'' gis''>2\fermata \ottava 0 r4 |
            s2. s2 |
            \tempo "Moderato" 4. = 96
            \ottava 1 \clef "treble" \tuplet 2/3 { <gis'' b'' e'''>8\( <fis'' b'' dis'''>8 } ~ 4. \tuplet 2/3 { <dis'' fis'' b''>8 <cis'' fis'' ais''>8 } ~ 4.\fermata\) \ottava 0 |
          }
        >> \oneVoice

        r4. \stemDown \tuplet 8/6 { ais16 dis' ais' \change Staff = "left" \clef "treble" \stemUp \ottava 0 dis'' ais'' dis''' \stemNeutral \change Staff = "right" \ottava 2 ais''' dis'''' } ais''''2. \ottava 0 |
        \ottava 1 q4\( <dis'' fis'' b''> <fis'' ais'' cis'''> <fis'' b'' dis'''>2. |
        q4 <gis'' b'' e'''> <ais'' cis''' fis'''>  <b'' dis''' gis'''>4.\) \ottava 0 \tuplet 2/3 { <dis' e' gis'>8 \ottava 1 <b'' dis''' gis'''>\( } |
        q8 <ais'' cis''' fis'''> <gis'' b'' e'''> <ais'' cis''' fis'''>4. ~ \tuplet 2/3 { q8\) q\( } q <gis'' b'' e'''> <fis'' ais'' dis'''> |
        \time 9/8
        <e'' ais'' dis'''>4. r8 cis''' dis''' fis''' e''' dis''' |
        <fis'' b'' dis'''>4. r8 cis''' dis''' fis''' e''' dis''' |

        \time 12/8

        <dis''' e''' gis'''>4.\arpeggio ~ \tuplet 2/3 { 8\)-"TODO: phrasing slurs" b''8 } <cis'' fis'' ais''>4. ~ \tuplet 2/3 { 8 ais'''8 } |
        <ais'' dis''' fis'''>4. ~ \tuplet 2/3 { 8 ais''8 } <ais' dis'' gis''>4. fis'''8 e''' dis''' |
        <gis'' b'' e'''>2.\arpeggio <ais' dis'' fisis''>4. e'''8 dis''' cis''' |
        <fis'' b'' dis'''>4.\arpeggio  <fis'' ais'' fis'''>\arpeggio <fis'' a'' dis'''>2.\arpeggio |

        \time 6/8
        gis'''4 fis''' dis'''  | \ottava 0
        \time 12/8
        <e'' gis'' b''>4. r8 ais'' gis'' <fis'' ais''>4 b''8 ~ 8 cis''' ais'' |
        \time 15/8
        <cis'' fis''>4. e''8 dis'' e'' <cis'' e'' a''>4\arpeggio <cis'' gis''>8 ~ 8 <cis'' fis''>4 e''4. |

        \key a \major
        \time 12/8
        \bar "||"
        \tempo "Tempo I" 4. = 80
        \tuplet 2/3 { <gis' b' dis''>8\( <dis' fis' b'>8 } ~ 4. \tuplet 2/3 { <cis' e' gis'>8 <gis b dis'>8 } ~ 4.\) |
        r4. \stemDown \tuplet 8/6 { gis16 b dis' \change Staff = "left" \clef "treble" \stemUp \ottava 0 gis' dis'' b'' \stemNeutral \change Staff = "right" \ottava 1 dis''' gis''' } dis''''2. \ottava 0 |

        q4\( <a cis' e'> <b dis' fis'> <cis' e' gis'>2. |
        q4 <d' fis' a'> <e' gis' b'> <fis' a' cis''>4.\) ~ \tuplet 2/3 { 8 q8\( } |

        q8 <e' gis' b'> <d' fis' a'> <e' gis' b'>4. ~ \tuplet 2/3 { 8 q } q <d' fis' a'> <cis' e' gis'>\) |
        q8\( <c' ees' g'> <cis' e' gis'> <d' g' b'>2.\) q8\( a' gis' |
        <cis' e' gis'>1.\) |

        \bar "||"
        \key gis \minor

        \tuplet 2/3 { <a' cis'' fis'' a''>8\( <gis' cis'' fis'' gis''>8 } ~ 4. \tuplet 2/3 { <e' gis' cis'' e''>8 <dis' gis' cis'' dis''>8 } ~ 4.\) |
        r4. \stemDown \tuplet 8/6 { dis'16 gis' dis'' \change Staff = "left" \clef "treble" \stemUp \ottava 0 fis'' b'' fis''' \stemNeutral \change Staff = "right" \ottava 2 b''' dis'''' } b''''2. \ottava 0 |

        <dis' fis' ais' dis''>4\( <e' gis' cis'' e''> <fis' ais' dis'' fis''> <gis' b' dis'' gis''>2. |
        q4 <ais' cis'' fis'' ais''> <b' dis'' gis'' b''> <dis'' fis'' ais'' dis'''>8 <cis'' fis'' ais'' cis'''>4 ~ 4.\) |

        r4. \stemDown \tuplet 8/6 { ais16 dis' ais' \change Staff = "left" \clef "treble" \stemUp \ottava 0 dis'' ais'' dis''' \stemNeutral \change Staff = "right" \ottava 2 ais''' dis'''' } ais''''2. \ottava 0 |
      }
      \volta 2 {
        \section
        \sectionLabel "Coda"
      }
    }
  }

  ais'8\( fis' b' cis'' fis''2 ~ |
  4.\)\shortfermata e''8\( dis'' e'' ais'' b'' |
  ais'' fis'' b'' cis''' fis'''2\)\fermata |



  \clef "bass" <dis fis b>2 \voiceOne \clef "treble" \ottava 1 \tiny \appoggiatura { ais'''16 b'''8 } ais'''8  fis''' cis''' cis''''  |
  b''' ais''' fis''' ais''' gis''' fis''' cis''' fis'''  |
  \ottava 0 dis''' b'' fis'' ais'' gis'' fis'' cis'' fis''  |
  dis'' b' fis' ais' gis' fis' cis' fis' | \oneVoice \normalsize









  <fis b cis' dis'>1\arpeggio |

  \bar "|."

}
