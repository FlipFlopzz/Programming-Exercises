a = 5;
b = 2;
c = 1;
[x1,x2,error_check1,error_check2] = quadratic_formula(a,b,c);
disp(x1)
disp(x2)
disp(error_check1)
disp(error_check2)
% Functions %
function [x1,x2,error_check1,error_check2] = quadratic_formula(a,b,c)
    value_under_squareroot = (b^2-(4*a*c));
    if value_under_squareroot < 0
        disp('Be careful you are about to take the square root of a negative number (imaginary number)')
    else
        disp('We are about to take the square root of a positive number')
    end
    x1 = (-b + sqrt(value_under_squareroot))/(2*a);
    x2 = (-b - sqrt(value_under_squareroot))/(2*a);
    error_check1 = a*x1^2+b*x1+c;
    error_check2 = a*x2^2+b*x2+c; 
end