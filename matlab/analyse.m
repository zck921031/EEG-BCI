% analyse a result
% yTe : Known groups
% C : Predicted groups
function analyse(y, yHat)
    Acc = sum(y == yHat)/length(y);
    C = confusionmat(y, yHat);
    n = length(C);
    recall = 0;
    accuracy = 0;
    for i = 1:n
        recall = recall + C(i,i) / sum( C(i,:) );
        accuracy = accuracy + C(i,i) / sum( C(:,i) );
    end
    recall = recall/n;
    accuracy = accuracy/n;
    f1 = 2*(recall*accuracy)/(recall+accuracy);
    disp( ['Acc =' num2str(Acc)]);
    disp( ['f1 =' num2str(f1)]);
    disp( ['recall =' num2str(recall)]);
    disp( ['accuracy =' num2str(accuracy)]);
end