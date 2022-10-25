\header {
  title = "Autumn Leaves"
  subtitle = ""
  composer = "?"
  meter = "swing"
}

\paper {
  system-system-spacing = #'((padding . 5 ) (basic-distance . 5))
}

meta = {
  \key g \minor
  \time 4/4
  \tempo 4 = 120
}


\markup ""

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.7
    \override ChordName.font-size = #+6
    r1 \mark \markup { \box A }
    c1:m7 f:7 bes:maj7 es:maj7
    a1:m7.5- d:7.13- g:m6 g:m6
    c1:m7 f:7 bes:maj7 es:maj7
    a1:m7.5- d:7.13- g:m6 g:m6
    \mark \markup { \box B }
    a1:m7.5- d:7.13- g:m6 g:m6
    c1:m7 f:7 bes:maj7 es:maj7
    \mark \markup { \box C }
    a1:m7.5- d:7.13- g2:m7 ges:7 f:m7 e:7
    a1:m7.5- d:7.13- g:m6 g:m6

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

      \improvisationOn
      d1
      \repeat unfold 8 {
        d1 d1 d1 d1 \break
      }
      \improvisationOff
}  }


>>

  \layout {
    #(layout-set-staff-size 15)
    \context {
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 6) (minimum-distance . 7) (padding . 4))
    }
  }
  \midi {  }
}
