function z = Rotate2D(thetad, x, y)
% two dimensional rotation 2D rotate Cartesian
% [xr, yr] = rot2d(thetad, x, y)
% Rotation of a two-dimensional object the Cartesian coordinates
% of which are contained in the vectors x and y.
% input:
% thetad = angle of rotation (degrees)
% x = vector containing objects x coordinates
% y = vector containing objects y coordinates
% output:
% xr = vector containing objects rotated x coordinates
% yr = vector containing objects rotated y coordinates
% convert angle to radians and set up rotation matrix
    
    
    %plot(x,y)
    radian = thetad * (pi/180);

% close shape

    v = [x;y];

% plot original object hold on, grid on
    fill(x,y,'r')


% rotate shape

    R = [cos(thetad) -sin(thetad); sin(thetad) cos(thetad)];
    [n,N] = size(x);
    
    newR= eye(N);
    
    for i =1:2
        for j = 1:2
            newR(i,j) = R(i,j);
        end
    end
    
    %disp(newR)
    xr = newR*x'
    yr = newR*y'

% plot rotated object
    hold on
    fill(xr,yr,'b')

%hold off
end