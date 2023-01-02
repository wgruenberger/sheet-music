\version "2.18.2"

\header {
  title = "??"
  subtitle = ""
  composer = ""
  meter = ""
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


song = \relative c,  {
    \repeat volta 2 {
     bes4 f' bes' e, | es8. es16 des4 c  b | bes d es e | f b bes bes'| \break
     es,8. es16 des4 c  b |  bes d es e | f bes, a es' | d as' g des | \break
     c d es e | f g as a | bes as g des | c ges' f b |
    }
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

    bes1 es1:7 bes1 f2:m7 bes2:7
    es1:7 es1:/+bes bes2 a2:7 d2:7 g2:7
    c1:m7 f:7 bes2 g2:7 c2:7 f2:7
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
