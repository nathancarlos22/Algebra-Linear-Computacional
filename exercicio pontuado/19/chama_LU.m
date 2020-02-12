clear
C1 = [1 2 3 %matriz C2
     4 5 6
     7 8 9];

[U L D M] = LU341modif(C1) %retorno da matriz m e da diagonal


C2 = [6 18 -12 %matriz C2
     2 4 -2
     3 17 10];

[U L D M] = LU341modif(C2) %retorno da matriz m e da diagonal

C3 = [10 20 30 %matriz C2
     20 45 80
     30 80 171];

[U L D M] = LU341modif(C3) %retorno da matriz m e da diagonal

C4 = [1 2 3 %matriz C2
     2 29 36
     3 26 61];

[U L D M] = LU341modif(C4) %retorno da matriz m e da diagonal

%Todas o resultado segue que A=LDM