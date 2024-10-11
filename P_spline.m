function y_interp = P_spline(coef, x, x_interp)
    n = length(x) - 1;  % Numarul de intervale
    y_interp = zeros(size(x_interp));
    
    % Gasesc intervalul corect pentru fiecare x_interp folosind o abordare vectorizata
    for i = 1:n
        idx = find(x_interp >= x(i) & x_interp <= x(i+1));
        dx = x_interp(idx) - x(i);
        coef_idx = 4 * (i - 1) + 1;  % Index pentru accesarea coeficientilor pentru intervalul curent
        y_interp(idx) = coef(coef_idx) + coef(coef_idx + 1) * dx + coef(coef_idx + 2) * dx.^2 + coef(coef_idx + 3) * dx.^3;
    end
end

