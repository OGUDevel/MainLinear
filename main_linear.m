function main_linear(Matrix1)
% Full Program for Linear elementary operations
% Arguments list
disp('1 - Is Square Function');
disp('2 - Row Echelon Form of a matrix');
disp('3 - Rank');
disp('4 - Nullity');
disp('5 - Query of Is Vector');
disp('6 - Adjoint of a matrix');
disp('7 - Diagonalization (imminent)');
% Input usage arguments
ProcessNumber = input('Input process number: ' );
% Switch iteration
switch ProcessNumber
    case 1
        issquare(Matrix1)
    case 2
        rowef(Matrix1)
    case 3
        rank(Matrix1)
    case 4
        nullity(Matrix1)
    case 5
        a = isvector(Matrix1);
        if a == 1
            disp('True: It is vector')
        else
            disp('No: It isn''t vector')
        end
    case 6
        adj(Matrix1)
    case 7
        error('Not written will be usable in revision')
end
        