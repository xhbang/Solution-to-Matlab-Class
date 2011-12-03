function [z, r] = fitcircle(x, varargin)
% Gauss Newton 方法
params.maxits = 100;
params.tol    = 1e-5;

m  = size(x, 2);
x1 = x(1, :)';
x2 = x(2, :)';

B = [x1.^2 + x2.^2, x1, x2, ones(m, 1)];

[U, S, V] = svd(B);
u = V(:, 4);

% 为了变量清晰，另设
a = u(1);
b = u(2:3);
c = u(4);

% 圆心，半径
z = -b / (2*a);
r = sqrt((norm(b)/(2*a))^2 - c/a);


% Gauss Newton方法减少几何拟合误差
fConverged = false;
% 初始化
u     = [z0; r0];
delta = inf;
nIts  = 0;

for nIts = 1:params.maxits
    [f, J] = sys(u);
    % 更新u
    h = -J \ f;
    u = u + h;

    % 检查收敛性
    delta = norm(h, inf) / norm(u, inf);
    if delta < params.tol
        fConverged = true;
        break
    end
end

function [f, J] = sys(u)
    f = (sqrt(sum((repmat(u(1:2), 1, m) - x).^2)) - u(3))';
    denom = sqrt( (u(1) - x1).^2 + (u(2) - x2).^2 );
    J = [(u(1) - x1) ./ denom, (u(2) - x2) ./ denom, repmat(-1, m, 1)];
end % sys

end
