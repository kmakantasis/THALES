function [discretized_values] = DiscretizeCriteria(criteria_values, good, medium, bad)

    % criteria numbering
    %  1. total porosity
    %  2. pore volume
    %  3. specific surface
    %  4. average pore radius
    %  5. density
    %  6. total color difference
    %  7. thermal expansion coef.
    %  8. penetration depth
    %  9. water total immersion 
    % 10. water absorption coef. 
    % 11. permeability
    % 12. modulus of elasticity
    % 13. ultrasound velocity
    % 14. surface temperature
    
    % dicriminates good than medium 
    upper_threshold = [0.05, 0.05, 0.05, 0.05, 0.05, 3, 1.1, -20, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1];
    % dicriminates medium than bad
    low_threshold = [0.1, 0.1, 0.1, 0.1, 0.1, 5, 1.2, -5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25];
    % check small to big (p) or big to small (m)
    signed = ['p', 'p', 'p', 'p', 'p', 'p', 'p', 'm', 'p', 'p', 'p', 'p', 'p','p'];
    
    discretized_values = [];
    
    for i=1:length(low_threshold)
        val = criteria_values(i);
        if signed(i) == 'm'
            val = - val;
        end
        if val < upper_threshold(i)
            val = good;
        elseif val < low_threshold(i)
            val = medium;
        else
            val = bad;
        end
        discretized_values = [discretized_values, val];
    end

end

