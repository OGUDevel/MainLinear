function orthproj(Vector1, Vector2)

if isvector(Vector1) == 1 && isvector(Vector2) == 1
    disp('Vector component of Vector1 along Vector2');
    projau = vectmultip((vectmultip(Vector1,Vector2)/(norm(Vector2)^2)),Vector2);
    disp('Vector component Vector1 orthogonal to Vector2');
    disp(Vector1);
    disp(projau);
    disp(Vector1 - projau');
else
    error('One or more input arguments are not valid');
end