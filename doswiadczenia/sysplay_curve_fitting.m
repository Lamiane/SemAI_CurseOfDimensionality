% Code based on: http://sysplay.in/blog/tag/polynomial-curve-fitting/
% Code shows what happens if there is not enough points in the neighbourhood
% "If there are not enough observations in a neighborhood of some point x , then it is hard to decide what f (xx ) should be." Zhang et al.

x = 0:0.9:4*pi; % dataset_x
y = sin(x); % dataset_y
xi = 0:0.1:4*pi; % this we need for interpolation
X = 0:0.1:4*pi;
Y = sin(X);

%  y_n = interp1(x, y, xi, "nearest");
%  y_l = interp1(x, y, xi, "linear");
%  y_p = interp1(x, y, xi, "pchip");
%  y_c = interp1(x, y, xi, "cubic");


for q = 1:length(x)-1
%      figure(q)
    y_s = interp1(x, y, xi, "spline"); % One-dimensional interpolation. Interpolates to determine the value of yi at the points, xi. 
    %  plot(x, y, "*", xi, y_n, "-", xi, y_l, "-", xi, y_p, "-", xi, y_c, "-", xi, y_s, "-");

    plot(x, y, "*", 'color', 'b');
    hold on
    plot( xi, y_s, "-", 'color', 'r');
    plot(X, Y, 'color', 'g');
    %  xlabel("x ->");
    %  ylabel("y ->");
    legend("Data points","Spline", "Real function");
    print("-dpng", strcat("all_types_of_interpolations",  num2str(length(x)), ".png"));
    hold off
    
    ind = ceil(unifrnd(0, length(x)));
    x(ind) = [];
    y(ind) = [];
    waitforbuttonpress();
end