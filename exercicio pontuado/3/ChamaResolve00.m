clear
A = [1 2; 4 5; 7 8];
b = [3; 6; 9];
ab = [A b];

[U b]=eliminacao00(A,b)

x=resolve00(U, b)

% para saber o resultado do sistema
% https://www.wolframalpha.com/widgets/view.jsp?id=ddc80caade49bb1673661c9958ab916