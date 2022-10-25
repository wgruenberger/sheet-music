\header {
  title = "500 Miles"
  composer = "Hooters"
}

starsolo =  {
  %  r4 r16 f'16( g4.) f2 d16 c bes c2 d8. g,4.
}
interOne = {
  % f,4.( g4) 
}
verse = {
  r8. f16 g16 g8 a16 bes2
  r8. bes16 c16 c8 d16 es2
}

chorus = {
  g8. f16. g32 r16 g8. g8 f4. 
  d4. r8
  f8 g8 f8 g4. g8 f8 f f4 d2
}

\score {

<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    } 
    
    \relative c, {
    \tempo 4 = 80
    \clef "bass_8"
    \starsolo
    \interOne
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
    \verse
  }
  >>

  \layout {  }
  \midi {  }
}

