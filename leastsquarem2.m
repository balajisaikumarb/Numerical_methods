function[m,d_new,X]=leastsquarem2(x,y)
d = y;
X = x;
G = [ones(length(d),1),X]; % least square approximation
m = (G'*G)\G'*d; % (G'*G)\G'*d is same as inv(G'*G)*(G'*d)
d_new = G*m;
end
