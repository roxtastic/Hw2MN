function y_interp = P_vandermonde(coef, x_interp)
    % Numarul de coeficienti
    n = length(coef);
    
    % Initializez vectorul rezultat
    y_interp = zeros(size(x_interp));
    
    % Evaluez polinomul la fiecare punct din x_interp
    for i = 1:length(x_interp)
        x = x_interp(i);
        y = 0;
        for j = 1:n
            y = y + coef(j) * x^(j-1);
        end
        y_interp(i) = y;
    end
end
