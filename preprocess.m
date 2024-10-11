function A = preprocess(A, min_count)
    % Elimina clientii cu mai putin de min_count recenzii
    counts = sum(A ~= 0, 2);
    A(counts < min_count, :) = [];
end