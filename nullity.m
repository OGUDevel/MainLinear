function m = nullity(a)
%%Iki sat?rda bitiririm isini lavuk isimli kodumuz cell iteration <3
null = length(a(1,:)) - rank(a);
m = null;
return