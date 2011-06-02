function y = cross_product(a,b)

if( length(a) ~= length(b))
    error('Different vector sizes');
end

if(length(a) >3 )
    error('This function only for 3x3 vectors');
end
    

op=[1,1,1];

mat=[op;a;b];
m1=[mat(2,2),mat(2,3);mat(3,2),mat(3,3)];
m2=[mat(2,1),mat(2,3);mat(3,1),mat(3,3)];
m3=[mat(2,1),mat(2,2);mat(3,1),mat(3,2)];

y = [det(m1),-det(m2),det(m3)];
