close all;
clear all;
clc;

N = 200;
k = 100;
x = repmat([1 0 0 1],1,50)
%x = [ones(1,k) zeros(1,N-k)];
%x = randi([0 1],1,N);
%x = [1 1 0 0 1 0];

pthr = 7.9e-31;
rho_thr = 0.2;

result1 = testB1(x, rho_thr);
result2 = testB2(x, pthr);
result3 = testB3(x, pthr);
