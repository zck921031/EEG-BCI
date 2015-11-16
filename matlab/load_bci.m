% load_bci.m
% f is a function handle loading dataset
function [xTr, yTr, xTe, yTe] = load_bci(PATH, f)
    fprintf('\nloading dataset : '); 
    disp(f);
    [xTr, yTr, xTe, yTe] = f(PATH);
end