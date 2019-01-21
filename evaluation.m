function distance = evaluation(chemin, distances)
    n = length(chemin);
    distance = distances(chemin(1),chemin(end));
    for i=1:n-1
        distance = distance + distances(chemin(i),chemin(i+1));
    end        
end