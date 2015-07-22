function [ranking] = DDSSGui(criteria_values)

    discretized_values = DiscretizeCriteriaGui(criteria_values, 1, 0, -1)
    
    % heuristically initialize importance or each one of the criteria.  
    weights = [1.001, 1.001, 1.001, 1.001, 1.001, 0.999, 0.999, 1.002, 1.000, 1.000, 1.000, 0.998, 0.997, 0.997];
    final_weigths = [];
    
    for i=1:length(weights)
        val = criteria_values(i);
        if isnan(val)
            continue
        else
            final_weigths = [final_weigths, weights(i)];
        end
    end
    
    
    ranking = mean(discretized_values .* final_weigths)
    
    
end

