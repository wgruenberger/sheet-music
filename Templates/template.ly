\header {
  title = ""
  composer = ""
}

notes = \relative c,  {
  \tempo 4 = 80
  c4 c c c
}


\score {
    \header {
        piece = "Intro"
    }
<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    }  {
    \clef "bass_8"
    \notes
  }
  
  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 } {
    \tabFullNotation
    \set TabStaff.minimumFret = #8
    \notes

    \set TabStaff.minimumFret = #1
    \notes
  }
  >>

  \layout {  }
  \midi {  }
}

