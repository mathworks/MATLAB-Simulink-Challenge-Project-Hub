function [isTrain] = get_train_ind(n, p_train, seed)
    % n (int): total number of data points
    % p_train (float): in range [0,1]; percentage of training points; the
    % rest will become validation points
    % seed (int or NaN by default): random number genertor's seed
    arguments
        n (1,1) {mustBeNumeric}
        p_train (1,1) {mustBeNumeric} 
        seed = NaN
    end
    
    if ~isnan(seed)
        rng(seed);
    end
    isTrain = false(1,n);    % create logical index vector
    isTrain(1:round(p_train*n)) = true; 
    isTrain = isTrain(randperm(n)); 
end
