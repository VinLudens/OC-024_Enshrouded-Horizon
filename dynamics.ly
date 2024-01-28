\version "2.24.3"
\include "global.ly"

crescPoco = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "cresc. poco a poco"))

rit = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "rit."))

rall = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "rall."))

dynamics = {
  \global
  % allow text in the dynamics block to be centered vertically
  % \override TextScript.extra-offset = #'(0 . 1)

  \time 12/8

  s1.*2 |

  \repeat segno 2 {
    s1.*3 |

    \time 9/8
    s4.*3 |
    \time 12/8

    s1.*2 |

    \compoundMeter #'(3 4 4)

    s2. s1 |
    s2. s1 |
    s2. s1 |

    \compoundMeter #'(4 4 4)

    s1 s1 |
    \time 4/4 s1*2 |

    \compoundMeter #'(3 4 4)

    s2. s1 |

    \compoundMeter #'(4 4 4)

    s1 s1 |

    \compoundMeter #'(3 5 4)

    s2. s1 s4 |

    \time 4/4

    s1*4 |

    s1 |
    s1 |
    \alternative {
      \volta 1 {
        s1*4 |

        \compoundMeter #'(3 2 4)
        s2. s2 |
        \time 4/4
        s1 |
        \compoundMeter #'(3 2 4)
        s2. s2 |
        \time 12/8
        s1. |

        s1.*4 |
        \time 9/8
        s4.*3*2 |

        \time 12/8

        s1.*4 |

        \time 6/8
        s2. |
        \time 12/8
        s1. |
        \time 15/8
        s1. s4. |

        \time 12/8
        s1.*12 |
      }
      \volta 2 {
        \section
        \sectionLabel "Coda"
      }
    }
  }

  s1*8 |

}
