function interpolation(x,y)

boyut = length(x);

for i=1:boyut
    
    for j=1:boyut
        
        if( j==1) mat(i,j) = 1;
            continue;
        end;
            mat(i,j) = x(i)^(j-1);
            
    end;
end;


a = pinv(mat)*(y');

syms x;

k=0;

for j = length(a):-1:1
    
    k = k + a(j)*x^(j-1);
end;

pretty(k);