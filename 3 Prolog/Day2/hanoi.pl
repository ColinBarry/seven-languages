% Towers of Hanoi solution, from http://www.cs.toronto.edu/~sheila/384/w11/simple-prolog-examples.html

move(1,X,Y,_) :-  
    write('Move top disk from '), 
    write(X), 
    write(' to '), 
    write(Y), 
    nl. 
move(N,X,Y,Z) :- 
    N>1, 
    M is N-1, 
    move(M,X,Z,Y), 
    move(1,X,Y,_), 
    move(M,Z,Y,X). 

% move(3,left,right,center).