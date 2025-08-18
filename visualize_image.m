function im = visualise_image (train_mat, number)
  % ia imaginea number din train_mat
  im = reshape(train_mat(number, :), 28, 28)';
  
  % decomenteaza daca vrei sa vizualizezi
  % imshow(im, []);
endfunction
