function distances_villes = distances(liste_villes)
    n = size(liste_villes);
    n = n(1);
    distances_villes = zeros(n,n);
    for i=1:n-1
        for j=i+1:n
            d = norm(liste_villes(i,:)-liste_villes(j,:));
            distances_villes(i,j)=d;
            distances_villes(j,i)=d;
        end
    end                
end