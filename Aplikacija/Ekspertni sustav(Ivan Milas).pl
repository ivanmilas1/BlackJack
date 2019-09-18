:- use_module(library(jpl)).
:- use_module(racunalo). 
main :-

  reset_answers,

  interface2,

  describe(Racunalo), nl.


  
pronadi_racunalo(Racunalo) :-

  racunalo(Racunalo), !.


% Biljezi korisnikove odgovore za pracenje odabira

:- dynamic(progress/2).


% Cisti korisnikove prethodne odabire


reset_answers :-

  retract(progress(_, _)),

  fail.

reset_answers.




% Pitanja za bazu znanja

question(tip) :-

  write('Za sto zelite koristiti racunalo?'), nl.

question(tip2) :-

  write('Dali zelite racunalo sa Intelovim ili Amd-ovim komponentama'), nl.

question(maticna_amd) :-

  write('Koju maticnu plocu zelite?'), nl.

question(maticna_intel) :-

  write('Koju maticnu plocu zelite?'), nl.

question(procesor_intel) :-

  write('Koji procesor zelite?'), nl.

question(procesor_amd) :-

  write('Koji procesor zelite?'), nl.

question(graficka_intel) :-

  write('Koju graficku karticu zelite?'), nl.

question(graficka_amd) :-

  write('Koju graficku karticu zelite?'), nl.

% Odgovori za bazu znanja

answer(internet) :-

  write('Internet i ured'),
  atom_string(L,'Internet i ured').

answer(multimedija) :-

  write('Multimedija').

answer(igranje) :-

  write('Igranje igrica').

answer(serveri) :-

  write('Serveri').

answer(amd_am4) :-

  write('AMD AM4 maticna').

answer(intel_h110) :-

  write('Intel H110 maticna').

answer(graficka_amd) :-

  write('Graficka kartica ').

answer(graficka_intel) :-

  write('Graficka kartica ').

answer(amd_1) :-

  write('Amd procesor').

answer(intel_g4560) :-

  write('Intel Pentium G4560').

answer(radeon_r7) :-

  write('Radeon R7').

answer(intel_graphic_610) :-

  write('Intel HD Graphics 610').

answer(intel) :-

  write('Sa Intelovim').

answer(amd) :-

  write('Sa AMD-ovim').

answer(svejedno) :-

  write('Nije bitno').

answer(rx_560) :-

  write('Radeon RX 560').

answer(vega_8) :-

  write('Radeon Vega 8').

answer(intel_graphic_630) :-

  write('Intel integrated graphic 630').

answer(i3_7100) :-

  write('Intel I3 7100').

answer(i5_700) :-

  write('Intel I5 700').

answer(ryzen_3) :-

  write('AMD Ryzen 3').

answer(amd_a320) :-

  write('AMD A320').



answer(intel_graphic_630) :-

  write('Intel HD Graphics 630').

%Opis racunala iz baze znanja


describe(veriton) :-

  write('Acer Veriton S2660G je pravo racunalo za vas.'), nl.

describe(hp_400pd) :-

  write('HP 400 PD je pravo racunalo za vas.'), nl.
  
describe(lenov_v520s) :-

  write('Lenovo V520S je pravo racunalo za vas.'), nl.

describe(links_hellium) :-

  write('Links Hellium U10L je pravo racunalo za vas.'), nl.

describe(links_xenon) :-

  write('Links XENON U25L je pravo racunalo za vas.'), nl.

describe(links_radon) :-

  write('Links RADON M25A je pravo racunalo za vas.'), nl.

describe(lins_hellium2) :-

  write('Links Hellium U20L je pravo racunalo za vas.'), nl.


% Odgovor na pitanje iz baze znanja

tip(Answer) :-

  progress(tip, Answer).

tip(Answer) :-

  \+ progress(tip, _),

  ask(tip, Answer, [internet,multimedija,igranje,serveri]).


tip2(Answer) :-

  progress(tip2, Answer).

tip2(Answer) :-

  \+ progress(tip2, _),

  ask(tip2, Answer, [intel, amd, svejedno]).


maticna_amd(Answer) :-

  progress(maticna_amd, Answer).

maticna_amd(Answer) :-

  \+ progress(maticna_amd, _),

  ask(maticna_amd, Answer, [amd_am4,amd_a320]).


maticna_intel(Answer) :-

  progress(maticna_intel, Answer).

maticna_intel(Answer) :-

  \+ progress(maticna_intel, _),

  ask(maticna_intel, Answer, [intel_h110]).


procesor_amd(Answer) :-

  progress(procesor_amd, Answer).

procesor_amd(Answer) :-

  \+ progress(procesor_amd, _),

  ask(procesor_amd, Answer, [amd_1,ryzen_3]).


procesor_intel(Answer) :-

  progress(procesor_intel, Answer).

procesor_intel(Answer) :-

  \+ progress(procesor_intel, _),

  ask(procesor_intel, Answer, [intel_g4560,i5_700,i3_7100]).


graficka_intel(Answer) :-

 progress(graficka_intel, Answer).

graficka_intel(Answer) :-

  \+ progress(graficka_intel, _),

  ask(graficka_intel, Answer, [ intel_graphic_610,intel_graphic_630]).


graficka_amd(Answer) :-

 progress(graficka_amd, Answer).

graficka_amd(Answer) :-

  \+ progress(graficka_amd, _),

  ask(graficka_amd, Answer, [radeon_r7,rx_560,vega_8]).

% Lista odgovora

answers([], _).

answers([First|Rest], Index) :-


  write(Index), write(' '), answer(First), nl,

  NextIndex is Index + 1,

  answers(Rest, NextIndex).

%Pregledan ispis u konzoli
parse(0, [First|_], First).

parse(Index, [First|Rest], Response) :-

  Index > 0,

  NextIndex is Index - 1,

  parse(NextIndex, Rest, Response).


% Postavljanje pitanja i bilje�enje odgovora

ask(Question, Answer, Choices) :-

  question(Question),

  answers(Choices, 0),

  interface(Question,Answer,Choices).

%Sucelje za pokretanje 
 interface2 :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- IZBOR RACUNALNE OPREME---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', 'showMessageDialog', [F,'Aplikacija za odabir racunalne opreme\n \n Pokrenite aplikaciju klikom na gumb'],N),
        jpl_call(F, dispose, [], _), 
	pronadi_racunalo(Racunalo).

	
%Sucelje za odabir odgovora
interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atomic_list_concat(Z, '\n', FinalAtom),
	jpl_new('javax.swing.JFrame', ['--- IZBOR RACUNALNE OPREME---'], F),
  jpl_new('javax.swing.JLabel',[],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [200,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
  jpl_call(F, toFront, [], _),
  pitanje(X,String2,String3),
  jpl_get('javax.swing.JOptionPane', 'QUESTION_MESSAGE', QuestionRef),
  jpl_call('javax.swing.JOptionPane', showInputDialog, [F,String3,String2,QuestionRef],Index),
  jpl_call(F, dispose, [], _),
  atom_number(Index,Index2),
  Index3 is Index2 - 1,
  parse(Index3, Z, Response),
  asserta(progress(X, Response)),
 	Response = Y.
	

%Pitanja i odgovori za bazu znanja
pitanje(tip,String2,String3):-
atom_string(String2,'Za sto zelite koristiti racunalo?'),
atom_string(String3,'1.Internet i ured\n2.Multimedija\n3.Igranje igrica').
  
pitanje(tip2,String2,String3) :-

  atom_string(String2,'Sa Intelovim ili Amd-ovim komponentama?'),
atom_string(String3,'1.Intel\n2.AMD\n3.Nebitno').

pitanje(maticna_amd,String2,String3) :-

  atom_string(String2,'Koju maticnu plocu zelite?'),
atom_string(String3,'1.AMD AM4\n2.AMD A320').

pitanje(maticna_intel,String2,String3) :-

  atom_string(String2,'Koju maticnu plocu zelite?'),
  atom_string(String3,'1.Intel H110').

pitanje(procesor_intel,String2,String3) :-

  atom_string(String2,'Koji procesor zelite?'),
  atom_string(String3,'1.Intel G4560\n2.Intel i5 7400').

pitanje(procesor_amd,String2,String3) :-

  atom_string(String2,'Koji procesor zelite?'),
  atom_string(String3,'1.AMD A1\n2.AMD Ryzen 7').


pitanje(graficka_intel,String2,String3) :-

  atom_string(String2,'Koju graficku karticu zelite?'),
atom_string(String3,'1.Intel HD Graphics 610\n2.Intel HD Graphics 630').

pitanje(graficka_amd,String2,String3) :-
  atom_string(String2,'Koju graficku karticu zelite?'),
  atom_string(String3,'1.AMD Radeon R7\n2.AMD RX 560').

interface3(String) :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- IZBOR RACUNALNE OPREME---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,String], N),
	jpl_call(F, dispose, [], _).



  
  
  

  

