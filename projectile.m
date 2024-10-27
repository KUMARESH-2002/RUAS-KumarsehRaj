v=input("enter the initial velocity: ");
theta=input("enter the launch angle: ");
theta_rad = deg2rad(theta);
range = (v^2 * sin(2 * theta_rad)) /9.8;
height = (v^2 * (sin(theta_rad))^2) / (2 * 9.8);
% Calculate trajectory
x = v * cos(theta_rad) * t;      % Horizontal distance
y = v * sin(theta_rad) * t - 0.5 * 9.8 * t.^2;  % Vertical distance

% Time of flight
T = 2 * v * sin(theta_rad)/9.8;
% Time vector for plotting
t = linspace(0, T, 500);
% Plot the trajectory
figure;
plot(x, y, 'b', 'LineWidth', 2); hold on;
% Mark maximum height and range
plot(range, 0, 'ro', 'MarkerFaceColor', 'r'); % Range point
plot(v^2 * sin(theta_rad)^2 / (2 * 9.8),height, 'go', 'MarkerFaceColor', 'g'); % Max height point

% Labels and title
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title(['Projectile Trajectory (v_0 = ', num2str(v), ' m/s, \theta = ', num2str(theta), '°)']);
legend('Trajectory', 'Range', 'Max Height');