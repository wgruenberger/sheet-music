% https://lilypond.org/doc/v2.22/Documentation/notation/note-heads



\header {
  title = ""
  subtitle = ""
  composer = ""
  meter = ""
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

meta = {
  \key g \minor
  \time 4/4
  \tempo 4 = 120
}


\markup "wird 3x wiederholt"

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.15
    r1 c1:m7 f:7 bes:maj7 es:maj7
    a1:m7.5- d:7.13- g:m6 g:m6
    c1:m7 f:7 bes:maj7 es:maj7
    a1:dim d:7.13- g:m6 g:m6
    a1:dim d:7.13- g:m6 g:m6
    c1:m7 f:7 bes:maj7 es:maj7
    a1:dim d:7.13- g2:m7 ges:7 f:m7 e:7
    a1:dim d:7.13- g:m6 g:m6
  }

  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } {
    \clef "bass_8"
    \meta
    \new Voice \with {
      \consists "Pitch_squash_engraver"
    } \relative {
      \improvisationOn
      \repeat unfold 2 {
        d4
      }
      \improvisationOff
}  }


>>

  \layout {
    \context {
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 8) (minimum-distance . 7) (padding . 5))
    }
  }
  \midi {  }
}

% tutorial https://lilypond.org/doc/v2.23/Documentation/learning/
% snippets https://lilypond.org/doc/v2.23/Documentation/snippets/
% reference https://lilypond.org/doc/v2.23/Documentation/notation/