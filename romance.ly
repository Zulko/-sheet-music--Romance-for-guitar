% OPEN WITH LILYPOND
 
\version "2.12.3"
 
%{
*
* ROMANCE FOR GUITAR
* Original author unknown (attributed to Fernando Sor, 1778-1839)
* This arrangement for piano by A. de la Marmotte is licensed under a
* Creative Commons Attribution 3.0 Unported License.
*
* 
* The full text of the licence can be found here:
* http://creativecommons.org/licenses/by/3.0/
*
* In a nutshell, YOU ARE FREE to share (copy, distribute, transmit),
* to remix or adapt the work, and to make commercial use of the work.
*
* BUT I ask you to cite "A. de la Marmotte" as the original author
* if you do any of the things above, just so that I can see what this
* little piece is becoming.
*
* Ideas for improvements are most welcome !
*
%}

% Version 0 - 05/04/2014
 
\header {
title = "Romance for guitar"
subtitle = "Attributed to Fernando Sor"
subsubtitle = "Made famous by Narciso Yepes and the movie Jeux Interdits" 
arranger="This is a free work ( licence CC BY 3.0)"
composer = "Freely arranged by A. de Lamarmotte"
tagline = "Grenoble, 2014 - Made with Lilypond. Licence: Creative Commons Attribution 3.0 Unported"
}
 
% In what follows, one line represents one bar.


arp =
#(define-music-function
     (parser location a b c)
     (ly:music? ly:music? ly:music?)
   #{
     << {$a } \\
        {\override TupletBracket #'bracket-visibility = ##f
          \times 2/3 {
         r8
         \stemDown
         $b
         \change Staff = left
         \stemUp
         $c }}
     >>
     \change Staff = right
   #})



arpf =
#(define-music-function
     (parser location a b c)
     (ly:music? ly:music? ly:music?)
   #{
     << {$a } \\
        {r16
        \stemUp
         $b
         \change Staff = left
         \stemUp
         $c
        \change Staff = right
        \stemUp
        $b }
     >>
   #})

global = {
\key e \minor
\time 3/4
}


right = \new Voice \with {
\remove "Note_heads_engraver"
\consists "Completion_heads_engraver"
}{
\global

\arp b'4 b8 g
\arp b'4 b8 g
\arp b'4 b8 g

\arp b'4 b8 g
\arp a'4 b8 g
\arp g'4 b8 g

\arp g'4 b8 g
\arp fis'4 b8 g
\arp e'4 b8 g

\arp e'4 b8 g
\arp g'4 b8 g
\arp b'4 b8 g

\arp e''4 e'8 g
\arp e''4 e'8 g
\arp e''4 e'8 g

\arp e''4 e'8 g
\arp d''4 e'8 g
\arp c''4 e'8 g

\arp c''4 e'8 c'
\arp b'4 e'8 c'
\arp a'4 e'8 c'

\arp a'4 e'8 c'
\arp b'4 e'8 c'
\arp c''4 e'8 c'

\arp b'4 dis'8 b
\arp c''4 dis'8 b
\arp b'4 dis'8 b

\arp dis''4 dis'8 a
\arp c''4 dis'8 a
\arp b'4 dis'8 a

\arp b'4 b8 g
\arp a'4 b8 g
\arp g'4 b8 g

\arp g'4 b8 g
\arp fis'4 b8 g
\arp e'4 b8 g

\arp fis'4 c'8 a
\arp fis'4 c'8 a
\arp fis'4 c'8 a


<< {a'2 } \\
   {\override TupletBracket #'bracket-visibility = ##f
     \times 2/3 { r8 \stemDown b8 
    \change Staff = left
    \stemUp
    a }
    \change Staff = right
    \stemDown
    \times 2/3 { dis'8 \stemDown b8 
    \change Staff = left
    \stemUp
    a }} 
   >>
\arp g'4 b8 a

\clef bass

<< {e'2.} \\
{
  \override TupletBracket #'bracket-visibility = ##f
  \times 2/3 {r8 b8 g8}
 \times 2/3 {r8 b8 g8}
 \times 2/3 {r8 b8 g8}}
>>
\override TupletBracket #'bracket-visibility = ##f
\times 2/3 {r8 b a}
\times 2/3 {r8 b dis}
\times 2/3 {r8 b b,}

%% ===  MIDDLE PART (E MAJOR) =====================

\clef treble
\key e \major

\arp gis'4 b8 gis
\arp gis'4 b8 gis
\arp gis'4 b8 gis


\arp gis'4 b8 gis
\arp fis'4 b8 gis
\arp e'4 b8 gis

\arp e'4 b8 a
\arp dis'4 b8 a
\arp dis'4 b8 a

\arp dis'4 b8 a
\arp cisis'4 b8 a
\arp dis'4 b8 a

\arp cis''4 dis'8 a
\arp cis''4 dis'8 a
\arp cis''4 dis'8 a

\arp cis''4 dis'8 a
\arp dis''4 dis'8 a
\arp cis''4 dis'8 a


\arp cis''4 e'8 gis
\arp b'4 e'8 gis
\arp b'4 e'8 gis

\arp b'4 e'8 gis
\arp cis''4 e'8 gis
\arp dis''4 e'8 gis

\arp e''4 e'8 gis
\arp e''4 e'8 gis
\arp e''4 e'8 gis

\arp e''4 e'8 gis
\arp dis''4 e'8 gis
\arp d''4 e'8 gis

\arp cis''4 e'8 cis'
\arp cis''4 e'8 cis'
\arp cis''4 e'8 cis'

\arp cis''4 e'8 cis'
\arp b'4 e'8 cis'
\arp a'4 e'8 cis'

\arp gis'4 e'8 b
\arp gis'4 e'8 b
\arp gis'4 e'8 b

\arp gis'4 dis'8 a
\arp a'4 dis'8 a
\arp fis'4 dis'8 a


\times 2/3 {e'8 b e'}
\times 2/3 {fis'8 gis' a'}
\times 2/3 {b'8 cis'' dis''}


\times 2/3 {e'' fis'' gis''}
\ottava #1
\times 2/3 {a'' b'' cis'''}
\times 2/3 {dis''' e''' fis'''}

\ottava #2

\arp gis'''4 b''8 gis''
\arp gis'''4 b''8 gis''
\arp gis'''4 b''8 gis''


\arp gis'''4 b''8 gis''
\arp fis'''4 b''8 gis''
\arp e'''4 b''8 gis''

\arp e'''4 b''8 a''
\arp dis'''4 b''8 a''
\arp dis'''4 b''8 a''

\arp dis'''4 b''8 a''
\arp cisis'''4 b''8 a''
\arp dis'''4 b''8 a''

\arp cis''''4 dis'''8 a''
\arp cis''''4 dis'''8 a''
\arp cis''''4 dis'''8 a''

\arp cis''''4 dis'''8 a''
\arp dis''''4 dis'''8 a''
\arp cis''''4 dis'''8 a''


\arp cis''''4 e'''8 gis''
\arp b'''4 e'''8 gis''
\arp b'''4 e'''8 gis''

\arp b'''4 e'''8 gis''
\arp cis''''4 e'''8 gis''
\arp dis''''4 e'''8 gis''

\arp e''''4 e'''8 gis''
\arp e''''4 e'''8 cis'''
\arp e''''4 e'''8 gis''

\arp e''''4 gis'''8 gis''
\arp dis''''4 gis'''8 b''
\arp b'''4 dis'''8 gis''

\arp cis''''4 cis'''8 e''
\arp cis''''4 cis'''8 a''
\arp cis''''4 cis'''8 e''

\arp cis''''4 e'''8 e''
\arp b'''4 e'''8 gis''
\arp gis'''4 b''8 e''

\arp a'''4 a''8 cis''
\arp a'''4 a''8 fis''
\arp cis'''4 a''8 cis''

\arp dis'''4 b''8 fis''
\arp gis'''4 b''8 a''
\arp fis'''4 b''8 fis''

\ottava #0

\times 2/3 {e'''8 b'' gis''}
\times 2/3 {b''8 gis'' e''}
\times 2/3 {gis'' e'' b'}

\times 2/3 {e'' b' gis'}
\times 2/3 {b' gis' e'}
\times 2/3 {gis' e' b}

\key e \minor
\clef bass

\times 2/3 {e'8 c' a}
\times 2/3 {c' a e}
\times 2/3 {a e c}


b,8 dis fis b dis' fis'


%%% ===    FINAL   =========================================

\clef treble

\arpf b'4 b16 g
\arpf b'4 b16 g
\arpf b'4 b16 g

\arpf b'4 b16 g
\arpf a'4 b16 g
\arpf g'4 b16 g

\arpf g'4 b16 g
\arpf fis'4 b16 g
\arpf e'4 b16 g

\arpf e'4 b16 g
\arpf g'4 b16 g
\arpf b'4 b16 g

\arpf e''4 e'16 g
\arpf e''4 e'16 g
\arpf e''4 e'16 g

\arpf e''4 e'16 g
\arpf d''4 e'16 g
\arpf c''4 e'16 g

\arpf c''4 e'16 c'
\arpf b'4 e'16 c'
\arpf a'4 e'16 c'

\arpf a'4 e'16 c'
\arpf b'4 e'16 c'
\arpf c''4 e'16 c'

\arpf b'4 dis'16 b
\arpf c''4 dis'16 b
\arpf b'4 dis'16 b

\arpf dis''4 dis'16 a
\arpf c''4 dis'16 a
\arpf b'4 dis'16 a

\arpf b'4 b16 g
\arpf a'4 b16 g
\arpf g'4 b16 g

\arpf g'4 b16 g
\arpf fis'4 b16 g
\arpf e'4 b16 g

\arpf fis'4 c'16 a
\arpf fis'4 c'16 a
\arpf fis'4 c'16 a

     << {a'2 g'4} \\
        {{r16
        \stemUp
         b
         \change Staff = left
         \stemUp
         a
        \change Staff = right
        \stemUp
        b }
        
        {dis'16
        \stemUp
         b
         \change Staff = left
         \stemUp
         a
        \change Staff = right
        \stemUp
        b }
        
        {r16
        \stemDown
         b16
         \change Staff = left
         \stemUp
         a
        
        \stemUp
        b, }}
     >>

\change Staff = right

e'4. g8 b e'
<g' b' e''>2.\arpeggio^"l.h."

 \bar "|."
 
}
 
left = \new Voice \with {
\remove "Note_heads_engraver"
\consists "Completion_heads_engraver"
}{
\global
\stemDown
e,2. e, e, e,
e, e, a, a,
b, b, e, e,
a, b,
<< {e,2.} \\ {r4 b,4 e} >>  fis g a


%% ===== E MAJOR

\key e \major
e,2. e, fis, fis,
b, b, e, e,2 dis4
cis2. cis2 b,4
a,2. a,2 cis4
b,2. b,2. 
<< {e,2.} \\ {r4 b,4 e}>>
gis4 a fis
e8
\clef treble
r8 r2


e''2. b' dis''
fis'' b' e'' b'2 dis''4
cis''2. b'2. a'2. gis'2.
fis'2. b'2.
<< {e'2.} \\ {r4 gis' b'}>>
<< {d''2.} \\ {r4  e'' gis''}>>


\key e \minor

<< {a''2.} \\ {r4 c''' e'''}>>
<< {fis'''2.} \\ {r4 dis''' a''}>>


%% ===== E MINOR

\clef bass
e,2. e, e, e,
e, e, a, a,
b, a, e, e,
a, b,
<<{e,2.} \\ {r8 b,[ e] r4.} >>  r2.


\bar "|."
 
}
#(set-global-staff-size 18)

#(set! paper-alist (cons '("video" . (cons (* 6 in) (* 3.4 in))) paper-alist))
%\paper {
%  #(set-paper-size "video")
%  top-margin = 4
% bottom-margin = 4
%}

\score {
\new PianoStaff \with {
instrumentName = "Piano"
} <<
\new Staff = "right" \with {
midiInstrument = "acoustic grand"
} \right
\new Staff = "left" \with {
midiInstrument = "acoustic grand"
} { \clef bass \left }
>>
\layout { }
\midi {
\context {
\Score
tempoWholesPerMinute = #(ly:make-moment 100 4)
}
}
}