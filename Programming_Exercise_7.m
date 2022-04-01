Student_Name = ["John Dow"; "Mary Tyler"; "Yuan Wang"; "Suby McNamara"];
SS_Number = [123456789;987654321;234987659;087612345];
Test1 = [85.00;65.00;55.00;75.00];
Test2 = [77.00;97.00;47.00;87.00];
Test3 = [98.00;0.00;88.00;68.00];
Final_Exam = [90.00;80.00;70.00;95.00];
[Average_Score] = average_function(Test1,Test2,Test3,Final_Exam);
[Letter_Grade] = grade_function(Average_Score);
[Missing_Tests] = missing_function(Test1,Test2,Test3,Final_Exam);
Final_Product = table(Student_Name, SS_Number, Test1, Test2, Test3, Final_Exam, Average_Score, Letter_Grade, Missing_Tests);
disp(Final_Product)
%FUNCTIONS%
function [Average_Score] = average_function(Test1,Test2,Test3,Final_Exam)
    for rowj = 1:1:4
        Tests = ((Test1(rowj,1) + Test2(rowj,1) + Test3(rowj,1))*60)/300;
        Finals = (Final_Exam(rowj,1)*40)/100;
        Average_Score(rowj,1) = Tests + Finals;
    end
end
function [Letter_Grade] = grade_function(Average_Score)
    for rowi = 1:1:4
        if Average_Score(rowi,1) <= 44
            Letter_Grade(rowi,1) = "F";            
        end
        if Average_Score(rowi,1) <= 49 && Average_Score(rowi,1) > 44
            Letter_Grade(rowi,1) = "D-";           
        end
        if Average_Score(rowi,1) <= 54 && Average_Score(rowi,1) > 49
            Letter_Grade(rowi,1) = "D";            
        end 
        if Average_Score(rowi,1) <= 59 && Average_Score(rowi,1) > 54
            Letter_Grade(rowi,1) = "D+";            
        end
        if Average_Score(rowi,1) <= 64 && Average_Score(rowi,1) > 59
            Letter_Grade(rowi,1) = "C-";            
        end
        if Average_Score(rowi,1) <= 69 && Average_Score(rowi,1) > 64
            Letter_Grade(rowi,1) = "C";            
        end
        if Average_Score(rowi,1) <= 74 && Average_Score(rowi,1) > 69
            Letter_Grade(rowi,1) = "C+";            
        end
        if Average_Score(rowi,1) <= 79 && Average_Score(rowi,1) > 74
            Letter_Grade(rowi,1) = "B-";      
        end
        if Average_Score(rowi,1) <= 84 && Average_Score(rowi,1) > 79
            Letter_Grade(rowi,1) = "B";            
        end
        if Average_Score(rowi,1) <= 89 && Average_Score(rowi,1) > 84
            Letter_Grade(rowi,1) = "B+";            
        end
        if Average_Score(rowi,1) <= 94 && Average_Score(rowi,1) > 89
            Letter_Grade(rowi,1) = "A-";
        end
        if Average_Score(rowi,1) <= 100 && Average_Score(rowi,1) > 94
            Letter_Grade(rowi,1) = "A";
        end
    end
end
function [Missing_Tests] = missing_function(Test1,Test2,Test3,Final_Exam)
    for rowl = 1:1:4
        if Test1(rowl,1) > 0 && Test2(rowl,1) > 0 && Test3(rowl,1) > 0 && Final_Exam(rowl,1) > 0
            Missing_Tests(rowl,1) = "NONE";
        else
            Missing_tests(rowl,1) = "MISSING TEST(S)";
        end
    end
end