function A = getTriangleArea(vertices)
% assigning the coordinates from the vertices input given in evalTriangle.m
x1 = vertices{1};
y1 = vertices{2};
x2 = vertices{3};
y2 = vertices{4};
x3 = vertices{5};
y3 = vertices{6};
% calculating the area of the triangle with the given vertices
A = .5 .* abs((x2 .* y3)-(x3 .* y2)-(x1 .* y3)+(x3 .* y1)+...
    (x1 .* y2)-(x2 .* y1));

end
