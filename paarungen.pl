frau(f1).
frau(f2).
frau(f3).
frau(f4).
frau(f5).

mann(m1).
mann(m2).
mann(m3).
mann(m4).
mann(m5).

loves(f1, m1).
loves(f1, m5).

loves(f2, m3).
loves(f2, m5).

loves(f3, m1).
loves(f3, m2).
loves(f3, m3).
loves(f3, m4).
loves(f3, m5).

loves(f4, m2).
loves(f4, m5).

loves(f5, m3).
loves(f5, m5).

solution(A,B,C,D,E,F,G,H,I,J)	:- loves(A, B), loves(C,D), loves(E,F), loves(G,H), loves(I,J),
	\=(A,C), \=(A,E), \=(A,G), \=(A,I), \=(C,E), \=(C,G), \=(C,I), \=(E,G), \=(E,I), \=(G,I),
	\=(B,D), \=(B,F), \=(B,H), \=(B,J), \=(D,F), \=(D,H), \=(D,J), \=(F,H), \=(F,J), \=(H,J),
	frau(A), frau(C), frau(E), frau(G), frau(I),
	mann(B), mann(D), mann(F), mann(H), mann(J).

% solves a relationship graph between 5 woman and 5 men with defined 'loving' pairs for full satisfaction

% solve: solution(f1,M1,f2,M2,f3,M3,f4,M4,f5,M5).
