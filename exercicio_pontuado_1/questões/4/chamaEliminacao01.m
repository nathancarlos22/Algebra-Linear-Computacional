clear
A = [2 1 1; 4 -6 0; -2 7 2];
b = [5; -2; 9];

[U b]=eliminacao01(A,b);
[U b] = eliminacao00(U, b);
x = sr00(U,b);

% para saber o resultado do sistema
% https://www.wolframalpha.com/widgets/view.jsp?id=ddc80caade49bb1673661c9958ab916