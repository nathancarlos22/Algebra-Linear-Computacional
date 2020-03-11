clear
A = [2 9 5
1 0 2
1 2 3];
b = [1;2;3];

[U b]=resolve01(A,b)
x = sr00(U,b)'
% para saber o resultado do sistema
% https://www.wolframalpha.com/widgets/view.jsp?id=ddc80caade49bb1673661c9958ab916