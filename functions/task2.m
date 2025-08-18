function new_X = task2 (photo, pcs)
  [m n] = size(photo);
  
  % initializare matrice finala.
  new_X = zeros(m, n);
  
  % TODO: cast photo la double.
  photo = double(photo);
  
  % TODO: normalizeaza matricea initiala scazand din ea media fiecarui rand.
  mu = mean(photo, 2);           % vector coloană cu mediile pe fiecare linie
  A = photo - mu;                % normalizare pe linii
  
  % TODO: construieste matricea Z.
  Z = A';                        % transpusa pentru a avea dimensiunea corectă (n x m)
  
  % TODO: calculeaza matricile U, S si V din SVD aplicat matricii Z
  [U, S, V] = svd(Z, "econ");
  
  % TODO: construieste matricea W din primele pcs coloane ale lui V
  W = V(:, 1:pcs);
  
  % TODO: cacluleaza matricea Y
  Y = W' * A;
  
  % TODO: aproximeaza matricea initiala
  new_X = W * Y + mu;
  
  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
  new_X = uint8(new_X);
endfunction
