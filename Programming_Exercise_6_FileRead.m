file1 = fopen('Programming_Exercise_6_Data.txt','r');
rowA = fscanf(file1,'%g',1);
columnB = fscanf(file1,'%g',1);
rowB = fscanf(file1,'%g',1);
matrixA = readmatrix('Programming_Exercise_6_Data_MatrixA.txt');
matrixB = readmatrix('Programming_Exercise_6_Data_MatrixB.txt');
[P] = matrix_times_matrix(rowA,rowB,columnB,matrixA,matrixB);
disp('Matrix x Matrix Product from Ryan')
disp(P)
P2 = matrixA * matrixB;
disp('Matrix x Matrix Product from MatLab Function')
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