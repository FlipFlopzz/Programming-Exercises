Answer_Sin = 0;
Answer_Cos = 0;
Answer_Tan = 0;
for i = 0:2:360
    disp(i)
    if i == 180
        disp('We are halfway done.')
    end
    Answer_Sin = sind(i)
    Answer_Cos = cosd(i)
    Answer_Tan = tand(i)
    if i >= 90
        break
    end
end
