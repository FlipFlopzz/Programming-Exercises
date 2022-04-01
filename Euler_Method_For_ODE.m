x1 = input('What is your initial x value: ');
y1 = input('What is your initial y value: ');
delta_x = input('What is your step size value (delta x): ');
x_final = input('At what value of x would you like to find the approx value of y: ');
y_prime = 8*exp(3*x1)-4*x1^3-12*x1^2-y1;
n = x_final/delta_x + 1;
for i = 1:1:n
    y_prime = 8*exp(3*x1)-4*x1^3-12*x1^2-y1;
    yi = y1 + y_prime * delta_x;
    x1 = x1 + delta_x;
    y1 = yi;
end
disp(yi)