male(coolDad).
male(coolBrother).
male(coolGrandfather).
male(coolUncle).
male(someDankCousin).
female(dopeMom).
female(dopeGrandma).
female(dopeAunt).
female(me).
female(grandGrandma).
parent(coolDad, me).
parent(dopeMom, me).
parent(coolDad, coolBrother).
parent(dopeMom, coolBrother).
parent(coolGrandfather, coolUncle).
parent(dopeGrandma, coolUncle).
parent(dopeAunt, someDankCousin).
parent(coolGrandfather, coolDad).
parent(dopeGrandma, coolDad).
parent(grandGrandma, coolGrandfather).
parent(dopeGrandma, dopeAunt).
parent(coolGrandfather, dopeAunt).

% just count biological parents

father(Dad, Child) :- male(Dad), parent(Dad, Child).
mother(Mom, Child) :- female(Mom), parent(Mom, Child).
son(Child, Parent) :- male(Child), parent(Parent, Child).
daughter(Child, Parent) :- female(Child), parent(Parent, Child).
grandparent(GP, C) :- parent(GP, P) , parent(P, C).
sibling(C1, C2) :- parent(P, C1), parent(P, C2), C1 \= C2.
aunt(Aunt, C) :- female(Aunt), parent(P, C), sibling(Aunt, P).
uncle(Uncle, C):- male(Uncle), parent(P, C), sibling(Uncle, P).
cousin(Cousin, C):- aunt(A, C), parent(A, Cousin).
cousin(Cousin, C):- uncle(A, C), parent(A, Cousin).
ancestor(An, C):- grandparent(GP, C), parent(An, GP).
