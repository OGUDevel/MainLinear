function y = distance(a,b)

if length(a) == length(b)
    
    size = length(a);
    if size < 2
        error('The vectors size must greater than one');
    end;
    
else
    error('Vectors size not equal each other');
end;


total=0;

for i = 1:size
    
    total = total + (a(i)- b(i)).^2;
    
end;

y = sqrt(total);