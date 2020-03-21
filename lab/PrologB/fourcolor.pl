color(red).
color(blue).
color(green).
color(yellow).

adjacent([Place1, Place2]):- color(Place1), color(Place2), Place1 \= Place2.
coloring([]).
coloring([H|T]):- adjacent(H), coloring(T).

% ?- coloring([[C1,C2],[C1,C3],[C1,C4],[C2,C4],[C3,C4],[C3,C5],[C3,C7],[C4,C6],[C5,C7],[C6,C7],[C7,C8]]).
% C1 = C5, C5 = C6, C6 = C8, C8 = red,
% C2 = C3, C3 = blue,
% C4 = C7, C7 = green ;
