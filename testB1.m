function result = testB1(x, rho_thr)

% parameters
N = length(x);
[C,lags] = xcov(x,N,'normalized');
c = length(C);

for i=1:c
    if(i==((c+1)/2))
        result=0;
    elseif((abs(C(i))<rho_thr))
            result=0;
        elseif((abs(C(i))>rho_thr))
            result=1;
            break;
    end
end



%   Amit Levy - 312416472 & Omer Biton - 205558570