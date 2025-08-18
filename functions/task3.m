function new_X = task3 (photo, pcs)
  [m, n] = size (photo);
  
  % initializare matrice finala.
  new_X = zeros (m, n);
  
  % TODO: cast photo la double.
  
  % TODO: calculeaza media fiecarui rand al matricii.
  
  % TODO: normalizeaza matricea initiala scazand din ea media fiecarui rand.
  
  % TODO: calculeaza matricea de covarianta.
  
  % TODO: calculeaza vectorii si valorile proprii ale matricei de covarianta.
  % HINT: functia eig
  
  % TODO: ordoneaza descrescator valorile proprii si creaza o matrice V
  % formata din vectorii proprii asezati pe coloane, astfel incat prima coloana
  % sa fie vectorul propriu corespunzator celei mai mari valori proprii si
  % asa mai departe.
  
  % TODO: pastreaza doar primele pcs coloane
  % OBS: primele coloane din V reprezinta componentele principale si
  % pastrandu-le doar pe cele mai importante obtinem astfel o compresie buna
  % a datelor. Cu cat crestem numarul de componente principale claritatea
  % imaginii creste, dar de la un numar incolo diferenta nu poate fi sesizata
  % de ochiul uman asa ca pot fi eliminate.
  
  % TODO: creaza matricea Y schimband baza matricii initiale.
  
  % TODO: calculeaza matricea new_X care este o aproximatie a matricii initiale
  
  % TODO: aduna media randurilor scazuta anterior.

  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
endfunction
