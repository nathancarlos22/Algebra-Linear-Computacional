A = [
4 -1 -1 0 0 0 0 0 0 0 0 0
-1 4 -1 0 0 -1 0 0 0 0 0 0
0 -1 4 -1 0 0 -1 0 0 0 0 0
0 0 -1 4 0 0 0 -1 0 0 0 0
-1 0 0 0 4 -1 0 0 -1 0 0 0
0 -1 0 0 -1 4 -1 0 0 -1 0 0
0 0 -1 0 0 -1 4 -1 0 0 -1 0
0 0 0 -1 0 0 -1 4 0 0 0 -1 
0 0 0 0 -1 0 0 0 4 -1 0 0
0 0 0 0 0 -1 0 0 -1 4 -1 0
0 0 0 0 0 0 -1 0 0 -1 4 -1
0 0 0 0 0 0 0 -1 0 0 -1 4

];
b=[40
30
30
80
10
0
0
50
40
30
30
80];
n=size(A,2);
Ab=eliminacao(A,b);
A=Ab(1: n, 1: n)
b=Ab(:, n+1)
x=sr(A, b)

% para saber o resultado do sistema
% https://www.wolframalpha.com/widgets/view.jsp?id=ddc80caade49bb1673661c9958ab916