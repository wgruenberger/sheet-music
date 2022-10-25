\header {
  title = "Mercy Mercy Mercy"
  composer = "Joe Zawinul"
}

\paper {
  system-system-spacing = #'((padding . 15 ) (basic-distance . 10))
}

notesOne = \relative c,  {
  bes4. bes8 d8 d4 es8 ~es4. es8 g8 g f4
}
sectionOne = \repeat volta 2 { 
  \notesOne
  \notesOne 
} 
notesTwo = \relative c, {
  bes8 bes bes bes bes bes bes bes
  bes8 bes bes bes bes g as a 
}
sectionTwo = {
  \notesTwo
  \notesTwo
}
notesThree =   {
  bes8 r8 bes8 bes8 d8 d8 es8 es8
}
sectionThree = \relative c, {
  \notesThree
  f8 r8 f,4 bes8 bes4 r8 
  \notesThree
  f8 r8 r4. f,8 g bes 
}
sectionFour = \relative c,  {
  c8 r4 c4. r8  bes8 |
  d8. r8. d4 c8 d f  |
  g4. f8 g4. f8      |
  g4. r8 r2          |
}


song = {
  \sectionOne
  \break
  \sectionTwo
  \break
  \sectionThree
  \break
  \sectionFour
}

\markup "wird 3x wiederholt" 

\score {
  \header {
    piece = "Chorus"
  }

<<
  \chords { 
    \set Staff.midiMaximumVolume = #0.15
    bes1:7 es1:7 bes1:7 es1:7 
    bes2 es2:/bes bes2:7 es2:/bes bes2 es2:/bes bes2:7 es2:/bes 
    bes2 bes4:/d es4 f1:sus7 bes2 bes4:/d es4 f1:sus7
    c1:m7 d:m7 g4:m f g:m f g1:m
  } 
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } {
    \clef "bass_8"
    \key bes \major
    \tempo 4 = 90
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
      \Staff \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 8) (minimum-distance . 7) (padding . 2))
    }
  }
  \midi {  }
}

