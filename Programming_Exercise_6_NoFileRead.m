rowA = 5;
columnB = 2;
rowB = 6;
matrixA = [1,2,3,4,5,6;7,8,9,1,2,3;1,2,3,4,5,4;1,2,3,4,5,6;1,2,3,4,5,7];
matrixB = [2,3;5,6;1,2;3,4;5,6;7,8];
[P] = matrix_times_matrix(rowA,rowB,columnB,matrixA,matrixB);
disp('Product of a Matrix x Matrix by Ryan')
disp(P)
P2 = matrixA * matrixB;
disp('Product of a Matrix x Matrix by MatLab Function')
disp(P2)
%Function Below
function [P] = matrix_times_matrix(rowA,rowB,columnB,matrixA,matrixB)
    for rowi = 1:1:rowA
        for coli = 1:1:columnB
            sum = 0;
            for colj = 1:1:rowB
                sum = sum + matrixA(rowi, colj) * matrixB(colj, coli);     
            end
            P(rowi, coli) = sum;
        end
    end
end