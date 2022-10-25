\header {
  title = "Autumn Leaves"
  composer = "Sinatra Version"
}
\paper {
  system-system-spacing = #'((padding . 10 ) (basic-distance . 10))
}


song = \relative c {
  \partial 2 g8 a bes4  
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

\markup "markup" 

\score {
  \header {
    piece = "A"
  }

<<
  \chords { 
    \set Staff.midiMaximumVolume = #0.15
    r1 c1:m7 f:7 bes:maj7 es:maj7 
    a1:m7.5- d:7.13- g:m6 g:m6 
    c1:m7 f:7 bes:maj7 es:maj7 
    a1:dim d:7.13- g:m6 g:m6 
    a1:dim d:7.13- g:m6 g:m6 
    c1:m7 f:7 bes:maj7 es:maj7 
    a1:dim d:7.13- g2:m7 ges:7 f:m7 e:7 
    a1:dim d:7.13- g:m6 g:m6 
  } 
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } {
    \clef "bass_8"
    \key g \minor
    \tempo 4 = 120
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

%https://lilypond.org/doc/v2.23/Documentation/notation/