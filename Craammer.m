A = [50     260     3545    319     171;
     260    1656    18251   1715    896;
     3545   18251   263279  22504   12299;
     319    1715    22504   2195    1066;
     171    896     12299   1066    873];

b = [2829; 15438; 212160; 18160; 9940];

detA = det(A);

if abs(detA) < 1e-12
    error('Matriks singular, tidak dapat diselesaikan dengan aturan Cramer.');
end

x = zeros(5,1);
for i = 1:5
    Ai = A;
    Ai(:,i) = b;
    x(i) = det(Ai) / detA;
end

disp('Hasil penyelesaian:');
fprintf('det(A) = %e\n', detA);
fprintf('x1 = %08.6f\n', x(1));
fprintf('x2 = %08.6f\n', x(2));
fprintf('x3 = %08.6f\n', x(3));
fprintf('x4 = %08.6f\n', x(4));
fprintf('x5 = %08.6f\n', x(5));

