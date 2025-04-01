progenitor(a,b).  % 1 %a es padre o madre de b
progenitor(a,c).  % 2 %a es padre o madre de c
progenitor(b,d).  % 3 %b es padre o madre de d
progenitor(b,e).  % 4 %b es padre o madre de e
progenitor(c,f).  % 5 %c es padre o madre de f

hermanos(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y. %en prolog, el simbolo \= significa distinto.
primos(X,Y) :- progenitor(T,X), progenitor(W,Y), hermanos(T,W).
nieto(X, Y) :- progenitor(U,X), progenitor(Y,U).
descendiente(X,Y) :- progenitor(Y, X).
descendiente(X, Y) :- progenitor(Y, P), descendiente(X, P). %Y es madre o padre de P e X es descendiente de P.
    