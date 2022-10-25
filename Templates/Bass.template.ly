\header {
  title = ""
  subtitle = ""
  composer = ""
  meter = ""
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

meta = {  }


song = {  }

\markup "wird 3x wiederholt"

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.15

  }
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } {
    \clef "bass_8"
    \meta
    \song
  }

  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
  } {
    \tabFullNotation
    \set TabStaff.minimumFret = #3
    \song
  }
>>

  \layout {
    \context {
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 8) (minimum-distance . 7) (padding . 5))
    }
  }
  \midi {  }
}

% https://lilypond.org/doc/v2.22/Documentation/notation/note-heads
% tutorial https://lilypond.org/doc/v2.23/Documentation/learning/
% snippets https://lilypond.org/doc/v2.23/Documentation/snippets/
% reference https://lilypond.org/doc/v2.23/Documentation/notation/
% % https://lilypond.org/doc/v2.22/Documentation/notation/note-heads
