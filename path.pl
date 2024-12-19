%% travel test
connection(a,b).
connection(b,c).
connection(c,d).
connection(d,e).
connection(e,f).
connection(f,g).

path(A,B)   :- connection(A,B); (connection(A,C), write(C), path(C,B)).

%% https://lpn.swi-prolog.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse11
directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(A,B)   :- directTrain(A,B); (directTrain(A,C), write(C), travelFromTo(C,B)).