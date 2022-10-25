\header {
  title = "Mercy Mercy Mercy"
  subtitle = ""
  composer = "Joe Zawinul"
  meter = ""
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

meta = {
  \time 4/4
  \tempo 4 = 83
  \key bes \major
}


\markup "wird 3x wiederholt"

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.15
    bes1:7 es1:7 bes1:7 es1:7
    bes2 es2:/+bes bes2:7 es2:/+bes bes2 es2:/+bes bes2:7 es2:/+bes % "over"
    bes2 bes4:/+d es4 f1:sus7 bes2 bes4:/+d es4 f1:sus7
    c1:m7 d:m7 g4:m f g:m f g1:m
  }

  \new Staff \with {
    midiMaximumVolume = #0
  } {
    \clef "bass_8"
    \meta
    \relative {
      \override Staff.Clef.color = #(x11-color 'grey70)
      \override Staff.StaffSymbol.color = #(x11-color 'grey70)
      \override Voice.NoteHead.color = #(x11-color 'grey70)
      \override Voice.Stem.color = #(x11-color 'grey70)

      \improvisationOn
      \repeat unfold 4 {
        d1 d1 d1 d1 \break
      }
      \improvisationOff
    }
  }


>>

  \layout {
    \context {
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 8) (minimum-distance . 7) (padding . 5))
    }
  }
  \midi {  }
}