% simple bci competition II trial
close all;
clear;
clc;

%% exp 1
prepare();
[xTr, yTr, xTe, yTe] = load_bci(PATH, @load_bci_ii_ia);
xTr_haar = extract_feature(xTr, 6, @wavedec, 4, 'haar');
xTe_haar = extract_feature(xTe, 6, @wavedec, 4, 'haar');

%model = fitcsvm(xTr, yTr, 'Standardize',true );
model = fitcsvm(xTr, yTr );
yHat = predict(model, xTe);
analyse(yTe, yHat);