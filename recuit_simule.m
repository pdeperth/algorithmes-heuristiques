function [optimum, trajectoire] = recuit_simule(nbr_ville, distance_matrix, alpha, T0, Tfroid)
    X0 = randperm(nbr_ville);
    trajectoire = [evaluation(X0,distance_matrix)];
    X_courant = X0;
    i = 0;
    while temperature(i,alpha,T0) > Tfroid
        X_candidat = voisin(X0);
        delta_F = evaluation(X_candidat,distance_matrix) - evaluation(X_courant,distance_matrix);
        if delta_F < 0
            X_courant = X_candidat;
            trajectoire(end+1) = evaluation(X_courant,distance_matrix);
        else
            T = temperature(i,alpha,T0);
            a = rand(1);
            p = exp(-(delta_F)/T);
            if a < p
                X_courant = X_candidat;
                trajectoire(end+1) = evaluation(X_courant,distance_matrix);
            end
        end
        i = i+1;
    end
    optimum = X_courant;

end