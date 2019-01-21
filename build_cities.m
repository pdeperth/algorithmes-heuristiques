function liste_villes = build_cities(nb_villes, intervalle_x, intervalle_y)
    liste_villes = zeros(nb_villes,2);
    for n=1:nb_villes
       x = rand*abs(intervalle_x(2)-intervalle_x(1))-intervalle_x(1);
       y = rand*abs(intervalle_y(2)-intervalle_y(1))-intervalle_y(1);
       liste_villes(n, :) = [x y];
    end
end