\version 2.23.81
\header {
  title = "500 Miles"
  subtitle = ""
  composer = "Hooters"
  meter = ""
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

meta = {
  \time 4/4
  \tempo 4 = 75
  \key a \minor % for Malaika 1 whole step higher than original
}


\markup " "

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.15
     \mark "Intro"
     {
        \partial 4 g4 |
        g2 bes:m
        c:m bes:
        c:m bes:m
        c1m
        g2 bes:m
        c:m bes:m
        c:m bes:m
        g1
    }

  }

  \new Staff \with {
    midiMaximumVolume = #0
  } {
    \clef "bass_8"
    \meta
    \relative c, {
      \override Staff.Clef.color = #(x11-color 'grey70)
      \override Staff.StaffSymbol.color = #(x11-color 'grey70)
      \override Voice.NoteHead.color = #(x11-color 'grey70)
      \override Voice.Stem.color = #(x11-color 'grey70)
      \override Score.RehearsalMark.direction = #DOWN

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