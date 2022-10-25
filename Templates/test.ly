\version "2.18.2"
\score
{
  \new Staff <<
  \relative c
  { \clef bass
    \set midiInstrument = #"marimba"
    c4 d4 e4 f4
  }
  >>
  \midi
  {
    \tempo 2 = 100
  }
    \layout { }
}