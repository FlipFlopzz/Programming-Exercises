N = 4;
A = [1, 2, -3, -1; 0, 3, 2, 1; 1, 1, 2, 2; 4, 3, 2, 1];
b = [1; 0; -1; 2];
[P] = matrix_times_vector(N,A,b);
disp('Product of a Matrix x Vector by Ryan')
disp(P)
P2 = A * b;
disp('Product of a Matrix x Vector by MatLab Function')
disp(P2)
%Function Below
function [P] = matrix_times_vector(N,A,b)
    for rowi = 1:1:N
        sum = 0;
        for colj = 1:1:N
            sum = sum + A(rowi, colj) * b(colj, 1);     
        end
        P(rowi, 1) = sum;
    end
end