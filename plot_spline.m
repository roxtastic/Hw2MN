function plot_vandermonde(x, y, nr_points)
    % Calculez coeficientii polinomului spline
    coef = spline_c2(x, y);

    % Calculez punctele pentru plotare
    xlin = linspace(min(x), max(x), nr_points)';
    ylin = P_spline(coef, x, xlin);

    % Plotarea interpolarii
    h = plot(xlin, ylin, '-', x, y, 'o', "markersize", 5, 'markerfacecolor', 'red', "color", "red");
    xlabel('x');
    ylabel('y');
    title('Traiectorie robot - Spline');
    set(gcf, 'color', [0.8 0.8 0.8]); % Seteaza culoarea fundalului la gri
    grid on;
    grid minor;
endfunction
