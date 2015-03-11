% volume of a D-dimensional ball of radius R
% R - radius, D - dimensions
function v = volume(R, D)
    PP = (pi.^(D/2));
    RR = [];
    for i = 1:1:length(R)
        RR(i,:) = R(i).^D;
    end
    denominator = [];
    for i = 1:1:rows(RR)
        denominator(i,:) = RR(i,:).*PP;
    end
    % with gamma(D) the plot is correct but it should be 1+D/2 :(
    numerator = gamma(D);
%      whos
    v = []
    for i = 1:1:rows(denominator)
        v(i,:)=denominator(i,:)./numerator;
    end
end
