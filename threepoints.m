function threepoints(a,b,c)

if( length(a) ~= 3 || length(b) ~= 3 || length(c) ~= 3 )
    
    error('invalid points. points are like (x,y,z)');
    
end;

v1 = b - a;
v2 = c - a;
v3 = b - c;

area = 0.5 * norm(cross(v1,v2));
disp('Area:'); 
disp(area);



a1 = angle(v1,v2);
if( a1 > 180)
a1 = 180 - a1;
end;

a2 = angle(v1,v3);
if( a1 > 180)
a2 = 180 - a1;
end;

a3 = 180 - (a1+a2);

disp('Angles:');
disp(a1);
disp(a2);
disp(a3);