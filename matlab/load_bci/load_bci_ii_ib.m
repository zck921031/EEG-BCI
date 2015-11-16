% load data
function [xTr, yTr, xTe, yTe] = load_bci_ii_ib(PATH)
    load( [PATH, 'BCI II\Data sets Ib\Traindata_0b.txt\Traindata_0.mat']);
    load( [PATH, 'BCI II\Data sets Ib\Traindata_1b.txt\Traindata_1.mat']);
    load( [PATH, 'BCI II\Data sets Ib\Testdata_b.txt\testdata.mat']);
    load( [PATH, 'BCI II\Data sets Ib\Testlabel\Testlabel.mat']);
    % dim = Traindata_0;
    xTr = [Traindata_0(:, 2:end); Traindata_1(:, 2:end)];
    yTr = [Traindata_0(:, 1); Traindata_1(:, 1)];
    xTe = testdata;
    yTe = Testlable;
end