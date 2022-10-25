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
notesTwo = \relative c, {
 bes8 bes bes bes bes bes bes bes
 bes8 bes bes bes bes g as a 
}
notesThree = \relative c,  {
 bes8 r8 bes8 bes8 d8 d8 es8 es8 
}
notesFour = \relative c,  {
 f8 r8 f,4 bes8 bes4 r8 
}
notesFive = \relative c,  {
  f8 r8 r4. f,8 g bes  
  }
notesSix = \relative c,  {
  c8 r4 c4. 
  r8  bes8 d8. r8. d4
  c8 d f g4. f8 g4. f8 g4. r8 r2
}

chorus = {
    \repeat volta 2 { 
      \notesOne 
      \notesOne 
      } 
    \break
    \notesTwo
    \notesTwo
    \break
    \notesThree
    \notesFour
    \notesThree
    \notesFive
    \break
    \notesSix
}



song = {
    \chorus
}
songKey = { \key bes \major }
songChords = { 
\chords { 
      \set Staff.midiMaximumVolume = #0.15
      bes1:7 es1:7 bes1:7 es1:7 
      bes2 es2:/bes bes2:7 es2:/bes bes2 es2:/bes bes2:7 es2:/bes 
      bes2 bes4:/d es4 f1:sus7 bes2 bes4:/d es4 f1:sus7
      c1:m7 d:m7 g4:m f g:m f g1:m
    } }
\markup "wird 3x wiederholt" 

\score {
    \header {
        piece = "Chorus"
    }

   \songChords
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
    }  {
    \clef "bass_8"
    
    \tempo 4 = 90
    \songKey
    \song
   
  }
}
\score {
\songChords
  \new TabStaff  \with {
   stringTunings = \stringTuning <b,,, e,, a,, d, g,>
   restrainOpenStrings = ##t
 } {
    \songKey
    \tabFullNotation

    \set TabStaff.minimumFret = #3
    \song
  }


  \layout {
    \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 8)
         (minimum-distance . 7)
         (padding . 2))
  }
    }
  \midi {  }
}

