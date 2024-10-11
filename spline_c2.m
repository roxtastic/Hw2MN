function coef = spline_c2(x, y)
    n = length(x);
    h = diff(x);
    b = diff(y) ./ h;

    % Initializez matricea A si partea dreapta rhs pentru punctele interioare
    A = zeros(n);
    rhs = zeros(n, 1);

    % Completez matricea A si partea dreapta rhs pentru punctele interioare
    for i = 2:n - 1
        A(i, i - 1) = h(i - 1);
        A(i, i) = 2 * (h(i - 1) + h(i));
        A(i, i + 1) = h(i);
        rhs(i) = 3 * (b(i) - b(i - 1));
    end

    % Conditii de frontiera (spline natural: a doua derivata este zero la capetele intervalului)
    A(1, 1) = 1;
    A(n, n) = 1;

    % Rezolv sistemul pentru coeficientii c
    c = A \ rhs;

    % Calculez coeficientii b, d
    coef = zeros(n - 1, 4);
    for i = 1:n - 1
        coef(i, 1) = y(i);
        coef(i, 2) = b(i) - h(i) * (2 * c(i) + c(i + 1)) / 3;
        coef(i, 3) = c(i);
        coef(i, 4) = (c(i + 1) - c(i)) / (3 * h(i));
    end

    % Rearanjez coeficientii intr-un vector coloana
    coef = coef';
    coef = coef(:);
end
