function [x, y] = parse_data(filename)
    % Deschid fisierul
    fid = fopen(filename, 'r');
    % Citesc numarul de puncte
    n = fscanf(fid, '%d', 1);
    % Citesc coordonatele x
    x = fscanf(fid, '%f', n + 1);
    % Citesc coordonatele y
    y = fscanf(fid, '%f', n + 1);
    % Inchid fisierul
    fclose(fid);
    % Convertesc in vectori coloana
    x = x(:);
    y = y(:);
end
