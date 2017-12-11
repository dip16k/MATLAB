x=1:5;
y=1:4;
z = conv(x,y)
%%
x = 1:5;
y = 1:4;
 
m=length(x); 
n=length(y); 
%make both equal length
X=[x,zeros(1,n)] 
H=[y,zeros(1,m)] 
for i=1:n+m-1 
    Y(i)=0; 
    for j=1:m 
        if(i-j+1>0) 
            Y(i)=Y(i)+X(j)*H(i-j+1); 
        else 
        end 
    end 
end 
Y 
%stem(Y); 