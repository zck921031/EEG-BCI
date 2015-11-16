% load data
function [xTr, yTr, xTe, yTe] = load_bci_ii_ia(PATH)
    load( [PATH, 'BCI II\Data sets Ia\Traindata_0a.txt\Traindata_0.mat']);
    load( [PATH, 'BCI II\Data sets Ia\Traindata_1a.txt\Traindata_1.mat']);
    load( [PATH, 'BCI II\Data sets Ia\Testdata_a.txt\testdata.mat']);
    load( [PATH, 'BCI II\Data sets Ia\Testlabel\Testlabel.mat']);
    % dim = Traindata_0;
    xTr = [Traindata_0(:, 2:end); Traindata_1(:, 2:end)];
    yTr = [Traindata_0(:, 1); Traindata_1(:, 1)];
    xTe = testdata;
    yTe = Testlable;
end