A = [2 1 1; 4 -6 0; -2 7 2];
b = [5; -2; 9];
%n=size(A,2);
%Ab=eliminacao00(A,b);
%A=Ab(1: n, 1: n)
%b=Ab(:, n+1)
x=sr00(A, b)

% para saber o resultado do sistema
% https://www.wolframalpha.com/widgets/view.jsp?id=ddc80caade49bb1673661c9958ab916