mem(X, [X]).
mem(X, [X|_]).
mem(X, [_|T]):- mem(X, T).
