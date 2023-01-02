\header {
  title = "500 Miles"
  composer = "Hooters"
}

starsolo =  \relative c' {
    r4 g4 f4. \tuplet 3/1 {d8 c bes} c4. d8 g,4
}
interOne = \relative c, {
   f,4( g8.)
}
verse = \relative c, {
  f16 g16 g8 a16 bes2
  r8. bes16 c16 c8 d16 es2
}

chorus = \relative c,, {
  f16 g32 r32 g8 g16 f4  d4 r16
  f16 g16 f16 g8. g16 f16 f f8 d4 r8.
}

\score {

<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    } {
    \key a \minor  % for Malaika 1 whole step higher than original
    \tempo 4 = 75
    \clef "bass_8"
    \starsolo
    \interOne
    \chorus
    \chorus
    \verse
  }
  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 }
  \relative c, {
    \tabFullNotation
    \set TabStaff.minimumFret = #8
    \starsolo

    \set TabStaff.minimumFret = #1
    \interOne
    \chorus
    \chorus
    \verse
  }
  >>

  \layout {  }
  \midi {  }
}

