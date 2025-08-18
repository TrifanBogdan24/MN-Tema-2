function sir = prepare_photo (im)
  %initializare sirul final.
  sir = zeros (1, 784);
  
  % TODO: inverseaza pixelii imaginii im.
  im = 255 - double(im);
  
  % TODO: transpune imaginea, iar apoi transforma imaginea intr-un vector linie.
  % HINT: functia reshape
  sir = reshape(im', 1, []);
endfunction
