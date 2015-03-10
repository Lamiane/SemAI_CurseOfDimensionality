% code showing how big should radius be
% so the D-dimensional ball would contain
% P of volume

D = 1:10;
capacity = 0.7;

const = capacity.^(1./D)

plot(D, const);

% na tablicy uzasadnić wzór
% dla D = 2, 3 można wyliczyć