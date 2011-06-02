function y=angle(a,b)

% Ingilizce'ye cevirdim error handler ekledim

if length(a) >= length(b)
    son = length(a);
else 
    son = length(b);
end


total=0;
norm1=0;
norm2=0;


for i=1:son
    
    total = total + (a(i)*b(i));
    norm1 = norm1 + a(i)^2;
    norm2 = norm2 + b(i)^2;   
end


norm1 = sqrt(norm1);
norm2 = sqrt(norm2);

ang = acos(total/(norm1*norm2));
ang = (ang*360)/(2*pi);

y = ang;