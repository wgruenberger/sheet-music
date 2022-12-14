

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}



\markup ""

\score {
  \header {
    piece = ""
  }

<<
  \chords {
    \set Staff.midiMaximumVolume = #0.15
    \override ChordName.font-size = #+3
    % chords here
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
      \repeat unfold 2 {
        d1 d1 d1 d1 \break
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