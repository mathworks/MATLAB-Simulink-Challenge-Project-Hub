function [X,Y] = create_one_step_regression_XY(data, in_vars, out_vars)
    % ngsim_data (Table): a table of ego states (eg. speed, acceleration, space_hdwy) sorted by vehicle_id and time
    % in_vars (cell of strings or string array): name of input variables
    % out_vars (same as in_vars(: output/target variable names 
    ego_ids = unique(data.Vehicle_ID);
    n_cars = length(ego_ids);
    X = cell(1, n_cars);
    Y = cell(1, n_cars);
    for k = 1:length(ego_ids)
        
        ego_id = ego_ids(k);
        is_ego = (data.Vehicle_ID == ego_id);
        data_ego = data(is_ego, :); %table
        data_ego_mtx = data_ego{1:end-1, in_vars}';
        target_mtx = data_ego{2:end, out_vars}'; %Q: end symbol / exit symbol
    
        X{k} = data_ego_mtx;
        Y{k} = target_mtx;
    %     size(data_ego_mtx); %debug
    %     size(target_mtx);
        
    % if ego_id > 10
    %     break 
    % end
    % if mod(ego_id, 300) == 0
    %     disp(ego_id)
    % end
    
    end
end