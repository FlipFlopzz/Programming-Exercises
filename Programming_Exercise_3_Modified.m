Number_Of_Terms = 22;
[Sum] = Compute_Infinite_Series(Number_Of_Terms);
disp(Sum)
%Function Below
function [Sum] = Compute_Infinite_Series(Number_Of_Terms)
    Sum_Odd = 0;
    Sum_Even = 0;
    for i = 1:2:Number_Of_Terms
        Sum_Odd = Sum_Odd + factorial(i)/i^2;
    end
    for i = 2:2:Number_Of_Terms
        Sum_Even = Sum_Even - factorial(i)/i^2;
    end
    Sum = Sum_Even + Sum_Odd;
end