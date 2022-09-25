% Cameron Sabiston
% CSCI 3675 Homework 2
% 09/25/2022

% Question 1 (a)
isSet([]).
isSet([_]).
isSet([H|T]):- not(member(H,T)), isSet(T).

% Question 1 (b)
subSet([],[]).
subSet([],[_|_]).
subSet([H|T],S):- member(H,S), subSet(T,S).

% Question 1 (c)
union([],Z,Z).
union([X|Y],Z,W):- member(X,Z),  union(Y,Z,W).
union([X|Y],Z,[X|W]):- \+ member(X,Z), union(Y,Z,W).

% Question 1 (d)
intersection([],_,[]).
intersection([X|Y],M,Z):- \+ member(X,M), intersection(Y,M,Z).
intersection([X|Y],M,[X|Z]):- member(X,M), intersection(Y,M,Z).

% Question 2
tally(_,[],0).
tally(E,[E|T],N):- tally(E,T,X), N is 1+X.
tally(E,[_|T],N):- tally(E,T,N).

% Question 3
subst(_,_,[],[]).
subst(X,X,Y,Y).
subst(X,Y,[H|T],[I|U]):- X = H, I = Y, subst(X,Y,T,U).
subst(X,Y,[H|T],[I|U]):- I is H, subst(X,Y,T,U).

% Question 4
insert(X,[],[X]).
insert(X,[H|T],[H|U]):- X >= H, insert(X, T, U).
insert(X,[H|T],[X|[H|T]]):- X < H.