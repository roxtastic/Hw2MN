function coef = vandermonde(x, y)
    % Numarul de puncte
    n = length(x);
    
    % Initializez matricea Vandermonde
    V = zeros(n);
    
    % Completez matricea Vandermonde
    for i = 1:n
        for j = 1:n
            V(i, j) = x(i)^(j-1);
        end
    end
    
    % Rezolv pentru coeficienti
    coef = V \ y;
end
