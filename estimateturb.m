function turb = estimateturb(transimage)


    C = unique(transimage);

    % inilers percentage
    p = 0.15;
    % noise
    sigma = 0.05;

    % set RANSAC options
    options.epsilon = 1e-6;
    options.P_inlier = 0.99;
    options.sigma = sigma;
    options.est_fun = @estimate_line;
    options.man_fun = @error_line;
    options.mode = 'MSAC';
    options.Ps = [];
    options.notify_iters = [];
    options.min_iters = 1000;
    options.fix_seed = false;
    options.reestimate = true;
    options.stabilize = false;

    
    X = [C];
    % run RANSAC
    [results, options] = RANSAC(X, options);

    %% refine the estimate via ML estimation
    try
        Theta_ML = estimate_line_ML(X, find(results.CS), sigma, 0);
        ML = true;
    catch
        % probably the optimization toolbox is not installed
        ML = false;
    end;

    results.Theta


end