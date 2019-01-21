% programme principal pour le problème du voyageur de commerce
close all;
nb_villes = 100;
intervalle_x = [-1,1];
intervalle_y = [-1,1];
liste_villes = build_cities(nb_villes, intervalle_x, intervalle_y);

% % affichage des villes
% figure;
% scatter(liste_villes(:,1),liste_villes(:,2));

distances_villes = distances(liste_villes);

chemin1 = randperm(nb_villes);
chemin2 = voisin(chemin);

eva_chemin1 = evaluation(chemin1, distances_villes);
eva_chemin2 = evaluation(chemin2, distances_villes);

% algo glouton
chemin_glouton = glouton(distances_villes);
afficher_chemin(chemin_glouton, liste_villes);

% recuit simulé
Tchaud = 30000000;
Tgel = 0.001;
Npaliers = 100000;
alpha = nthroot(Tgel/Tchaud, Npaliers)
[chemin_recuit, evolution_recuit] = recuit_simule(nb_villes, distances_villes, alpha, Tchaud, Tgel);
afficher_chemin(chemin_recuit, liste_villes);
figure;
plot(evolution_recuit);


