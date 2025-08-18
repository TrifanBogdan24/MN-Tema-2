function [train, miu, Y, Vk] = magic_with_pca (train_mat, pcs)
  [m, n] = size (train_mat);
  
  % initializare train
  train = zeros (m, n);
  
  % initializare miu
  miu = zeros (1, n);
  
  % initializare Y
  Y = zeros (m, pcs);
  
  % initializare Vk
  Vk = zeros (n, pcs);
  
  % TODO: cast train_mat la double.
  
  % TODO: calculeaza media fiecarei coloane a matricii.
  
  % TODO: scade media din matricea initiala.
  
  % TODO: calculeaza matricea de covarianta.
  
  % TODO: calculeaza vectorii si valorile proprii ale matricei de covarianta.
  % HINT: functia eig
  
  % TODO: ordoneaza descrescator valorile proprii si creaza o matrice V
  % formata din vectorii proprii asezati pe coloane, astfel incat prima coloana
  % sa fie vectorul propriu corespunzator celei mai mari valori proprii si
  % asa mai departe.
  
  % TODO: pastreaza doar primele pcs coloane din matricea obtinuta anterior.
  
  % TODO: creaza matricea Y schimband baza matricii initiale.
  
  % TODO: calculeaza matricea train care este o aproximatie a matricii initiale
  % folosindu-va de matricea Vk calculata anterior
endfunction
