function xs = time_integrate(init_x, delta_time, dxs)
    % time integration of 1D position given speeds
    xs = [init_x, zeros(1, numel(dxs))];
    for k = 1:numel(dxs)
        dx = dxs(k);
        xs(k+1) = xs(k) + delta_time * dx;
    end
end


