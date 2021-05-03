function result = testB2(x, pthr)

% parameters
N = length(x);

x1 = x(1:N/2);
x2 = x((N/2)+1:N);

k1 = sum(x1)
k2 = sum(x2)

p1 = binopdf(k1,N/2,0.5)
p2 = binopdf(k2,N/2,0.5)

% conditions
if(p1 <= pthr)
    result = 0;
elseif(p2 <= pthr)
    result = 0;
else
    result = 1;
end


%   Amit Levy - 312416472 & Omer Biton - 205558570