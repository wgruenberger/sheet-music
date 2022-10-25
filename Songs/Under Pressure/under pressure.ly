\header {
  title = "Under Pressure"
  composer = "Queen & David Bowie"
}

notes =  {
  g8 g8 g8 g16 g16 g8 d8
}


\score {

<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    } 
    
    \relative c, {
    \tempo 4 = 80
    \clef "bass_8"
    \notes

  }
  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 } 
  \relative c, {
    \tabFullNotation
    \set TabStaff.minimumFret = #8
    \notes

  }
  >>

  \layout {  }
  \midi {  }
}

