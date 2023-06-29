function data = add_time_step_column(data, delta_time)
arguments
    data table
    delta_time double = 100  %millisec
end

% Generate "Time_Step" column
ts = unique(data.Global_Time);

%dts = ts(2:end) - ts(1:end-1);
%assert(length(unique(dts))==1 && dts(1) == 100); % assert delta glbal time values is constant (100ms)
% ^ This assertion holds only within a single time-block dataset.

min_t = min(ts);
data.Time_Step = (data.Global_Time - min_t)/delta_time;
end