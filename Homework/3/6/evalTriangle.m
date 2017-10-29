function Area = evalTriangle()
% creating a 3 by 3 cell array and asking the user to fill the array
vertices = cell(3,3);
vertices{1} = input('Enter x1: ');
vertices{2} = input('Enter y1: ');
vertices{3} = input('Enter x2: ');
vertices{4} = input('Enter y2: ');
vertices{5} = input('Enter x3: ');
vertices{6} = input('Enter y3: ');
% calling the getTriangleArea.m function to do the area calculation
Area = getTriangleArea(vertices);

disp(['The area of the the triangle is ', num2str(Area)])

end