function [ranking] = DDSS(criteria_values)

    discretized_values = DiscretizeCriteria(criteria_values, 1, 0, -1);
    
    % heuristically initialize importance or each one of the criteria.  
    weights = [1.001, 1.001, 1.001, 1.001, 1.001, 0.999, 0.999, 1.002, 1.000, 1.000, 1.000, 0.998, 0.997, 0.997];
    
    ranking = mean(discretized_values .* weights);
    
    
end

