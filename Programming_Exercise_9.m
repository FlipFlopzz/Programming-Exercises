% Main Program %
n = 8;
m = 2;
x = [1,2,4,5.6,8,9,3,5];
y = [1,2,3,-4,-5,-6,77,88];
p = polyfit(x,y,m);
[A,b,a] = non_linear_regression(n,m,x,y);
disp(A)
disp(b)
disp(a)
disp(p)
% Functions %
function [A,b,a] = non_linear_regression(n,m,x,y)
    for rowi = 1:1:m+1
        for columnj = 1:1:m+1
            sum = 0;
            for i = 1:1:n
                sum = sum + x(i)^(rowi-1+columnj-1);
            end
            A(rowi,columnj) = sum;
        end
    end
    for rowi = 1:1:m+1
        sum = 0;
        for i = 1:1:n
            sum = sum + x(i)^(rowi-1)*y(i);
        end
        b(rowi,1) = sum;
    end
    a = inv(A)*b;
end