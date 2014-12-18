%% 1.1
%{
A = [
    0 0 5;
    0 4 1;
    1 1 1;
    ];
%{
A = [
    1 1 2;
    0 0 1;
    1 0 0;
    ];
%}
[Q, R] = gramschmidt(A)
[Q, R] = mgramschmidt(A)
%}
%% 1.2
%DONT KNOW WHAT TO DO!

%% 1.3
%{
A = [
0 0 5;
0 4 1;
1 1 1;
];
A = [1 2 3; 2 5 6; 3 6 7];
B = A;
for i = 1:50
[Q, R] = gramschmidt(B);
eig(B);
B = R * Q;
end
%For small matrices of the type I have used, we notice that the
%diagonal elements of Ak represent the eigen values of the original
%matrix A.
%In case of symmetric matrices, Ak gets reduced to a diagonal matrix
%with the eigen values of the original matrix occupying the diagonal.
%}

%% 2
A = [0 -1 0; 1 0 0; 0 0 1];
%B = logm(A);
C = matlog(A);

%% 3.1
A = [eye(3), [0;0;0]; [0,0,0,1]];
B = [eye(3), [2;2;2]; [0,0,0,1]];
lol = simpl_def_interp(A,B)

%% 3.2
A = [eye(3), [0;0;0]; [0,0,0,1]];
B = [eye(3), [2;2;2]; [0,0,0,1]];
lol = def_interp(A,B)
