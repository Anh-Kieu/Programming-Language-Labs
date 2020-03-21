% the declared variables
var(a, int).
var(b, double).
var(c, double).
% The program functions
fun(bar, [double, int]).
fun(bar, [string, int]).
fun(add, [int, int, int]).
fun(add, [double, double, double]).
fun(add, [string, string, string]).

check(Function, Candidate):- fun(Function, Candidate), % find that function
write('CHECK '), write(Function), write(' : '), % print its type
write(Candidate), write('\n').

% built-in type coersions from first type to second type
builtinCoersion(char, int).
builtinCoersion(int, double).
builtinCoersion(double, string).
% try to coerce first type to second type
coerceTypes(X,Y) :- builtinCoersion(X,Y).
coerceTypes(X,Z) :- builtinCoersion(X,Y), coerceTypes(Y,Z).

% Coerce type X to type Y
coerce(X,Y) :- write('COERCE '), % Print about the coersion attempt.
write(X), write(' to '), write(Y), write('?\n'),
coerceTypes(X,Y), % Then try to coerce the types.
write(' COERCE succeeded.\n'). % This only prints if it coerced.

% Equiv types T1 and T2 directly
equiv(T1,T2):- write('EQUIV '), % Print about the equiv test.
write(T1), write(' and '), write(T2), write('?\n'),
T1 = T2, % See if they are name equivalent
write(' EQUIV succeeded.\n').
% Equiv types T1 and T2 via coersion
equiv(T1,T2):- not(T1=T2), % If they were not name equivalent
write(' EQUIV failed.\n'),
coerce(T1,T2). % Try to coerce them

% Infer the type of a declared variable
infer(X, Type) :- var(X, Type),
write('INFER '), write(X), write(' is a(n) '), write(Type), write('\n').

% Infer the return type of a function call on one argument
infer(apply_1(Function, Arg), ReturnType) :-
write('-- Typechecking function call\n'),
infer(Arg,TypeOfArg), % infer type of argument
check(Function,TypeOfFunction), % find a function to check
TypeOfFunction = [TypeOfParam, FunctionsReturn],
equiv(TypeOfArg, TypeOfParam), % equiv arg and param types
FunctionsReturn = ReturnType, % if that all succeeded, keep the return type
write('INFER '), write(Function),
write(' returns '), write(ReturnType), write('\n').

% Infer the return type of a function call on 2 arguments
infer(apply_2(Function, Arg1, Arg2), ReturnType) :-
write('-- Typechecking function call\n'),
infer(Arg1,TypeOfArg1), % infer type of argument
infer(Arg2,TypeOfArg2), % infer type of argument
check(Function,TypeOfFunction), % find a function to check
TypeOfFunction = [TypeOfParam1, TypeOfParam2, FunctionsReturn],
equiv(TypeOfArg1, TypeOfParam1), % equiv arg and param types
equiv(TypeOfArg2, TypeOfParam2), % equiv arg and param types
FunctionsReturn = ReturnType, % if that all succeeded, keep the return type
write('INFER '), write(Function),
write(' returns '), write(ReturnType), write('\n').

% assign function
typecheck(assign(Left, Right)) :-
write('-- Assign '), write(Left), write(' to '), write(Right), write('\n'),
infer(Right, Type2), % infer right
infer(Left, Type1), % infer left
equiv(Type2, Type1),
write('ASSIGN '), write(Left), write(' to '), write(Right), write(' SUCCEEDED').

/*
?- typecheck(assign(c, apply_1(bar, apply_2(add, a,b)))).
-- Assign c to apply_1(bar,apply_2(add,a,b))
-- Typechecking function call
-- Typechecking function call
INFER a is a(n) int
INFER b is a(n) double
CHECK add : [int,int,int]
EQUIV int and int?
 EQUIV succeeded.
EQUIV double and int?
 EQUIV failed.
COERCE double to int?
CHECK add : [double,double,double]
EQUIV int and double?
 EQUIV failed.
COERCE int to double?
 COERCE succeeded.
EQUIV double and double?
 EQUIV succeeded.
INFER add returns double
CHECK bar : [double,int]
EQUIV double and double?
 EQUIV succeeded.
INFER bar returns int
INFER c is a(n) double
EQUIV int and double?
 EQUIV failed.
COERCE int to double?
 COERCE succeeded.
ASSIGN c to apply_1(bar,apply_2(add,a,b)) SUCCEEDED
true ;
*/
