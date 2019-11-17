function[a,b]=leastsquarem1(x,y)
% x_sum=sum(x);
% y_sum=sum(y);
% M_x=mean(x);
% M_y=mean(y);
% SS_x=sum((x-mean(x)).^2);
% SS_y=sum((y-mean(y)).^2);
% SP=sum((x-mean(x)).*(y-mean(y)));
% a=SP/SS_x;
% b=M_y-a*M_x;
y_sum=sum(y);
x_sum=sum(x);
x2_sum=sum(x.^2);
n=max(size(x));
xy_sum=sum(x.*y);
B=[y_sum; xy_sum];
A=[n x_sum; x_sum x2_sum];
K=A\B;
b=K(1);a=K(2);
end
