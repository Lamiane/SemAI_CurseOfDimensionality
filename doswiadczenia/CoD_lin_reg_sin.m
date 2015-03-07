% Curse of Dimensionality
% shown on an linear regression

% what happens if there are no neighbours?

% Choose randomly N points on the interval upper_X:lower_X
N = 20;
upper_X = 10;
lower_X = 1;
data_X = unifrnd(lower_X, upper_X, [1,N]);
data_Y = sin(data_X);
degree = 5;

%scatter(data_X, data_Y)

%for i = 1:N
    % plot linear regression result for N-i points
    FI = [data_X',data_X',data_X',data_X',data_X'];
    W = ((FI'*FI)^-1)*FI'*data_Y'; % Bishop 3.17
    % w is NaN. Why?
    % ((FI'*FI)^-1) is matrix of infinities
    X = [lower_X:1:upper_X];
%      Y = W.*X.^[0:1:degree-1];
    U = [X;X;X;X;X];
    POT = ([0:1:degree-1]');
    MM = U.^POT
    Y = W' * (MM);
    plot(X, Y);
    waitforbuttonpress()
%end
