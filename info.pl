human(hans).
human(olga).
human(herbert).
human(angela).
human(laura).

father(hans, olga).
father(hans, angela).
father(herbert, hans).

mother(laura, olga).
mother(laura, angela).

parent(A,B)	:- father(A,B); mother(A,B).
grandfather(A,B):- father(A,X), father(X,B).
sibling(A,B)	:- father(X,A), father(X,B), \=(A,B).
