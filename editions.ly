\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
\addEdition fingering
\addEdition dynamics

\editionMod dynamics 1 0/8 music.Dynamics -"Editions"
\editionMod tweaks 32 3/8 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 32 3/8 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)

\editionMod tweaks 53 3/8 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 53 3/8 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)

\editionMod tweaks 56 3/8 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 56 3/8 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)

\editionMod tweaks 57 0/4 music.Voice.A -"TODO: slur out of repeat"
