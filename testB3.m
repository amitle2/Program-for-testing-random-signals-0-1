function result = testB3(x, pthr)

% parameters
N = length(x);

x1 = x(1:N/4);
x2 = x((N/4)+1:N/2);
x3 = x((N/2)+1:3*N/4);
x4 = x((3*N/4)+1:N);

k1 = sum(x1)
k2 = sum(x2)
k3 = sum(x3)
k4 = sum(x4)

p1 = binopdf(k1,N/4,0.5)
p2 = binopdf(k2,N/4,0.5)
p3 = binopdf(k3,N/4,0.5)
p4 = binopdf(k4,N/4,0.5)

% conditions
if(p1 <= pthr)
    result = 0;
elseif(p2 <= pthr)
    result = 0;
elseif(p3 <= pthr)
    result = 0;
elseif(p4 <= pthr)
    result = 0;
else
    result = 1;
end

%   Amit Levy - 312416472 & Omer Biton - 205558570