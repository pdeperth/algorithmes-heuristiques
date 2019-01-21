% programme principal pour le problème du voyageur de commerce
close all;
nb_villes = 6;
intervalle_x = [-1,1];
intervalle_y = [-1,1];
liste_villes = build_cities(nb_villes, intervalle_x, intervalle_y);

% affichage des villes
figure;
scatter(liste_villes(:,1),liste_villes(:,2));

distances_villes = distances(liste_villes);

chemin = randperm(nb_villes)
chemin = voisin(chemin)