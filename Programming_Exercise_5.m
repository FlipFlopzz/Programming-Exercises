%x1 = input('What is your initial x value: ');
%y1 = input('What is your initial y value: ');
%delta_x = input('What is your step size value (delta x): ');
%x_final = input('At what value of x would you like to find the approx value of y: ');
file1 = fopen('eulerdata.txt','r');
x1 = fscanf(file1,'%g',1);
y1 = fscanf(file1,'%g',1);
delta_x = fscanf(file1,'%g',1);
x_final = fscanf(file1,'%g',1);
n = x_final/delta_x + 1;
[yi_plus_1] = eulermethod(y1, delta_x, x1, n);
disp(yi_plus_1)
%%Functions
function [f_xi_yi] = derivativeinput(x1,y1)
    y_prime = 8*exp(3*x1)-4*x1^3-12*x1^2-y1;
    f_xi_yi = y_prime;
end
function [yi_plus_1] = eulermethod(y1, delta_x, x1, n)
    for i = 1:1:n
        %f_xi_yi = 8*exp(3*x1)-4*x1^3-12*x1^2-y1;
        [f_xi_yi] = derivativeinput(x1,y1);
        yi = y1 + f_xi_yi * delta_x;
        x1 = x1 + delta_x;
        y1 = yi;
    end
    yi_plus_1 = yi;
end