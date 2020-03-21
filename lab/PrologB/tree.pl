intree(leaf(X), V) :- X = V.
intree(node(T1,_), V) :- intree(T1, V).
intree(node(_,T2), V) :- intree(T2, V).

numberOfLeaves(leaf(_), 1).
numberOfLeaves(node(T1,T2), N) :- numberOfLeaves(T1, Something), numberOfLeaves(T2, Hi), N is Hi+Something.

position(leaf(X), X, 1).
position(node(T1, _), V, N) :- position(T1, V, N).
position(node(T1, T2), V, N) :- numberOfLeaves(T1, N1), position(T2, V, N2), N is N1+N2.
