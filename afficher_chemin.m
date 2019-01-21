function afficher_chemin(chemin, liste_villes, test)
    n = length(chemin);
    villes_chemin = zeros(n+1,2);
    for i=1:n
        villes_chemin(i,:) = liste_villes(chemin(i),:);
    end
    villes_chemin(end,:) = villes_chemin(1,:);
    figure;
    plot(villes_chemin(:,1), villes_chemin(:,2));
    if test==1
        title('Algorithme de Glouton pour le PVC')
    else
        title('Algorithme du recuit simulé pour le PVC')
        
end
