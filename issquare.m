function p = issquare(a)
%Control entered matrix is square or not
% ----written by----------------------------
% Mahmut Bulut
% Department of Computer Engineering
% Eskisehir Osmangazi University
% Eskisehir / TURKEY
% ------------------------------------------
% issquare(a) defination and use
% ------------------------------------------
% a is nxn matrix
% Example
% >> a=[1 2 3 5; 2 4 5 6; 7 3 7 2; 2 4 1 8]
% >> issquare(a)
% Square matrix! and assigned to variable "ans"!
% >> a=[1 2 3 5; 2 4 5 6]
% >> issquare(a)
% Is not square...

if length(a(1,:)) ~= length(a(:,1))
    error('Matrix is not square nxn or error to solve input arguments')
else if length(a(1,:)) == length(a(:,1))
        disp('Processed: Square matrix')
        p = a;
    end
end