function new_X = task3 (photo, pcs)
  [m n] = size(photo);
  
  % initializare matrice finala.
  new_X = zeros(m, n);
  
  % TODO: cast photo la double.
  photo = double(photo);
  
  % TODO: normalizeaza matricea initiala scazand din ea media fiecarui rand.
  mu = mean(photo, 2);      % medie pe fiecare linie
  A = photo - mu;           % matrice centrată
  
  % TODO: construieste matricea de covarianta Z.
  Z = (A * A') / (n - 1);   % matricea de covarianță (m x m)
  
  % TODO: calculeaza valorile si vectorii proprii
  [V, S] = eig(Z);
  
  % sortăm vectorii proprii după valorile proprii descrescător
  [eigvals, idx] = sort(diag(S), 'descend');
  V = V(:, idx);
  
  % TODO: construieste matricea W din primele pcs coloane ale lui V.
  W = V(:, 1:pcs);
  
  % TODO: calculeaza matricea Y.
  Y = W' * A;
  
  % TODO: aproximeaza matricea initiala.
  new_X = W * Y + mu;
  
  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
  new_X = uint8(new_X);
endfunction
