% structures
A = struct('foo', 'bar',
           'spam', 'eggs',
	       'bacon', 'spam');

fields = fieldnames(A);
for i = 1:length(fields)
	sprintf('%s: %s', fields{i}, A.(fields{i}));
end

% looping over an array
B = [1,11,111,1111];
for i = 1:length(B)
	sprintf('B(%d) = %.0f',i,B(i))	;
end
	
% simultaneous looping over arrays
C = [1,2,3];
D = [7,8,9];
for i = 1:length(C)
	sprintf('c = %0.0f, d = %0.3f', C(i), D(i));
end
		
