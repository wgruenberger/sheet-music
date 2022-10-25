\header {
  title = "Practice"
  subtitle = "Rhythms"
  composer = "Werner Grünberger"
}

\paper {
  system-system-spacing = #'((padding . 12 ) (basic-distance . 10))
}

meta = {
  \time 4/4
  \tempo 4 = 66
  \key c \major
}

notes =  \relative c, {
 c4 c c c
 c4 c c c
 \break
 c8 c c c c c c c
 c8 c c c c c c c
 \break
 c16 c c c c c c c c c c c c c c c
 ^\markup "ab hier, Ta: Sechzehntel, Ta-a: Achtel, ..." % caret: markup on top
 c16 c c c c c c c c c c c c c c c
 \break
 c4 c8 c c16 c c c \tuplet 3/1 { c4 c c }
 c4 c8 c c16 c c c \tuplet 3/1 { c4 c c }
 \break
 c4 c2 r4
 c4 c2 r4
 r4. c8 c c c4
 r4. c8 c c c4
 \break
 c8 c r c r c c4
 c16 c c8 c16 c c8 c16 c c8 c4
 c8 c16 c c8 c16 c c8 c16 c c4
 r16 c c c r16 c c c r16 c c c c4
 \break
 c4. c8 c4 c4
 c4. c8 c4 c4
}

practiceLyrics = \lyricmode {
  "1" "2" "3" "4" 
  "Ta-a" "Ta-a" "Ta-a" "Ta-a"
  "1" "&" "2" "&" "3" "&" "4" "&"
  "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta"
  "1" "e" "&" "a" "2" "e" "&" "a" "3" "e" "&" "a" "4" "e" "&" "a"
  "Ta (16th)" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta" "Ta"
  "1" "2" "&" "3" "e" "&" "a" "4" da da
  "Ta-a-a-a" "Ta-a" "Ta-a" "Ta" "Ta" "Ta" "Ta" "M" "da" "da"
  "1" "2"
  "Ta(qu.)" "Ta-a  M"
  "&" "3" "&" "4"
  "M-m-m  Ta" "Ta" "Ta" "Ta-a"
  "1" "&" "&" "&" "4"
  "1" "e" "&" "2" "e" "&" "3" "e" "&" "4"
  "1" "&" "a" "2" "&" "a" "3" "&" "a" "4"
  "e" "&" "a" "e" "&" "a" "e" "&" "a" "4"
  "1" "2&" "3" "4"
  "Ta-a-a" "Ta" "Ta-a" "Ta-a"
}

\markup "Ta: Achtel, Ta-a: Viertel, etc. ..."

\score {
    \header {
        piece = ""
    }
<<
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    }  {
      \clef "bass_8"
      \meta
      \notes
    }
    \addlyrics \practiceLyrics

  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 } {
    \tabFullNotation
    \set TabStaff.minimumFret = #1
    \notes
  }
  \addlyrics \practiceLyrics

  >>

  \layout {
    \context {
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 8) (padding . 6))
    }
  }  \midi {  }
}

