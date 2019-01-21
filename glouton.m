function chemin = glouton(distances_villes)
    n = length(distances_villes);
    chemin = zeros(1,n);
    chemin(1) = randi(n);
    for k=2:n
        dmin = max(distances_villes)+1;
        choix = 0;
        for cand=1:n
            if ismember(cand,chemin)==false
                if distances_villes(chemin(k-1),cand) < dmin
                    dmin = distances_villes(chemin(k-1),cand);
                    choix = cand;
                end
            end
        end
        chemin(k) = choix;                
end