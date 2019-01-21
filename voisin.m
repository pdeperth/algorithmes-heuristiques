function chemin_voisin = voisin(chemin)
    n = length(chemin);
    i = randi(n);
    l = randi(n-1);
    if i > 1
        chemin = [chemin(i:end) chemin(1:i-1)];
    end
    chemin(1:1+l) = fliplr(chemin(1:1+l));
    chemin_voisin = [chemin(n-i+2:end) chemin(1:n-i+1)];

end