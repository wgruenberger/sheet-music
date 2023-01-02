\version "2.18.2"

\header {
  title = "Simple Blues"
  subtitle = ""
  composer = ""
  meter = "SHUFFLE Feel"
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

\markup {
    \vspace #2
}

meta = {
 \time 4/4
 % \tempo 4 = 83
 \key c \major
}

\markup ""

\score {
  \header {
    piece = ""
  }

<<
  \chords {

    \set Staff.midiMaximumVolume = #0.15
    \override ChordName.font-size = #+4

     \transpose c bes {
      c1:7 c1:7 c1:7 c1:7
      f1:7 f1:7 c1:7 c1:7
      g1:7 f1:7 c1:7 g1:7
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
      \override Score.RehearsalMark.color = #red
      \override Score.RehearsalMark.font-size = #+4

      \improvisationOn

        \mark "       I" d1 d1 d1 d1 \break
        \mark "    IV" d1 d1 \mark "           I" d1 d1 \break
        \mark "  V" d1 \mark "           IV" d1 \mark "           I" d1 \mark "          V"  d1 \break

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