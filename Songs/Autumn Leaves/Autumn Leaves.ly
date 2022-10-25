\header {
  title = "Autumn Leaves"
  subtitle = ""
  composer = ""
  meter = ""
}

song = \relative c {
  \partial 2 g8 a bes4
  \mark \markup { \box A }
  es1 ~es4 f,4 g a
  d2 d2 ~d4 es,4 f g
  c1 ~c4 d, e fis4
  bes1 ~bes4 g a bes
  \break
  es1 ~es4 f,4 g a
  d2 d2 ~d4 es,4 f g
  c1 ~c4 a c bes4
  g1 ~g2 fis4 g
  \break
}

meta = {
  \key g \minor
  \time 4/4
  \tempo 4 = 120
}

  \chords {
    \set Staff.midiMaximumVolume = #0.15
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


% https://lilypond.org/doc/v2.22/Documentation/notation/note-heads







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


\markup "wird 3x wiederholt"

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

% tutorial https://lilypond.org/doc/v2.23/Documentation/learning/
% snippets https://lilypond.org/doc/v2.23/Documentation/snippets/
% reference https://lilypond.org/doc/v2.23/Documentation/notation/