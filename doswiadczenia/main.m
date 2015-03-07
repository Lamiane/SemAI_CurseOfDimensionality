% create a plot of a volume of a D - dimensional ball of radius R
dimensions = [1:1:10];
radius = [0.5, 1, 2];
v = volume(radius, dimensions);

figure(1)
hold on
scatter(dimensions, v(1,:), 'red');     % R = 0.5
scatter(dimensions, v(2,:), 'green');   % R = 1
scatter(dimensions, v(3,:), 'blue');    % R = 2
%  scatter(dimensions, v(4,:), 'black');   % R = 10
hold off