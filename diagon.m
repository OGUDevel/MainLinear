function solut = diagon(a, P)

%Control if entered matrices are diagonalized.
% ----written by----------------------------
% Mahmut Bulut
% Department of Computer Engineering
% Eskisehir Osmangazi University
% Eskisehir / TURKEY
% ------------------------------------------
% diagon(a) defination and use
% ------------------------------------------
issquare(a)
load solution.mat
if solution == 1
    lambda = (P\a);
    lambda = lambda*P;
    sonuc = diag(lambda);
if  (lambda/sonuc) == eye(length(a(1:m)))
    disp('Lambda is the diagonal matrix' )
    disp(lambda)
    disp('...and P matrix is the diagonalized matrix of a matrix')
    solut = P;
end
if (lambda/sonuc) ~= eye(length(a(1:m)))
        error('Cannot diagonalized with P matrix')
end
else
    error('a matrix is not square')
end 