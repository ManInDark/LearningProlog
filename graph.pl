edge(v1,v3).
edge(v1,v5).
edge(v1,v7).

edge(v2,v7).

edge(v3,v4).

edge(v4,v5).
edge(v4,v6).

edge(v5,v7).
edge(v5,v8).

edge(v6,v7).

edge(v7,v9).

edge(v8,v9).

connection(A,B) :- edge(A,B); edge(B,A).
triangle(A,B,C) :- connection(A,B), connection(B,C), connection(A,C).
apart1(A,B)     :- connection(A,B).
apart2(A,C)     :- connection(A,B), connection(B,C), \=(A,C), \=(A,B), \=(B,C).
apart3(A,D)     :- connection(A,B), connection(B,C), connection(C,D),
                    \=(A,B), \=(A,C), \=(A,D), \=(B,C), \=(B,D), \=(C,D).
apart4(A,E)     :- apart2(A,C), apart2(C,E).

%% apartN proves that A, {B,C,D} are distance N apart