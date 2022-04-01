%Main Program%
clear
clc
a = 1;
b = 4;
n = 100;
h = (b-a)/n;
syms x
y = x^2;
exact_ans = int(y,a,b);
[approx_int] = multiple_trapizoid(a,b,n,y,h);
disp('Exact Answer:')
disp(exact_ans)
disp('Approximate Answer:')
disp(approx_int)
%Functions%
function [approx_int] = multiple_trapizoid(a,b,n,y,h)
    factor = h/2;
    first_term = subs(y,a);
    sum = 0;
    for i = 1:1:n-1
        sum = sum + subs(y,a+(i*h));
    end
    second_term = 2*sum;
    third_term = subs(y,b);
    approx_int = factor*(first_term+second_term+third_term);
end