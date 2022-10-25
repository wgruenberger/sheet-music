\header {
  title = ""
  composer = ""
}

notes =  \relative c, {
\tempo 4 = 80
c4 c c c 
 c8 c c c c c c c 
 c16 c c c c c c c c c c c c c c c 
 c4 c8 c c16 c c c \tuplet 3/1 { c4 c c }
 c4 c2 r4 c8 c r c r c c4 
 r4. c8 c c c4
 c16 c c8 c16 c c8 c16 c c8 c4
 c8 c16 c c8 c16 c c8 c16 c c4
 r16 c c c r16 c c c r16 c c c c4
}
four = \lyricmode { 
  "1" "2" "3" "4" 
  "1" "&" "2" "&" "3" "&" "4" "&"  
  "1" "e" "&" "a" "2" "e" "&" "a" "3" "e" "&" "a" "4" "e" "&" "a"  
  "1" "2" "&" "3" "e" "&" "a" "4" da da
  "1" "2" "1" "&" "&" "&" "4" "&" "3" "&" "4"
  "1" "e" "&" "2" "e" "&" "3" "e" "&" "4"
  "1" "&" "a" "2" "&" "a" "3" "&" "a" "4"
  "e" "&" "a" "e" "&" "a" "e" "&" "a" "4"
}


\score {
    \header {
        piece = ""
    }
<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    }  {
      \clef "bass_8"
      \notes
    }
    \addlyrics \four

  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 } {
    \tabFullNotation
    \set TabStaff.minimumFret = #1
    \notes
  }
  \addlyrics \four

  >>

  \layout {  }
  \midi {  }
}

