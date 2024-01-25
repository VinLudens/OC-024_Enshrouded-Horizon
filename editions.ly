\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
\addEdition fingering
\addEdition dynamics

\editionMod dynamics 1 0/8 music.Dynamics -"Editions"
\editionMod tweaks 32 1/4 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 32 1/4 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)

\editionMod tweaks 53 1/4 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 53 1/4 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)

\editionMod tweaks 56 1/4 music.Voice.A \once\override Beam.positions = #'(-8 . -2)
\editionMod tweaks 56 1/4 music.Voice.A \once\override Beam.color = #(rgb-color 1 0 0)
