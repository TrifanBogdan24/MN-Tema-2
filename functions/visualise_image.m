function im = visualise_image (train_mat, number)
  % initializare matrice finala.
  im = zeros (28, 28);
  
  % TODO: citeste din matricea de antrenament linia cu numarul number.
  im_row = train_mat(number, :);
  
  % TODO: transforma linia citita intr-o matrice 28x28 care trebuie apoi
  % transpusa.
  im = reshape(im_row, [28, 28])';
  
  % TODO: transforma matricea in uint8 pentru a fi o imagine valida.
  im = uint8(im);
  
  % imshow (im)
endfunction
