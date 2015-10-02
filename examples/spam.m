function val = spam(A,B,C,D)
	% returns a a number as if the arguments were different digits in the number
	%
	% Arguments:
	% A: float, hundreds
	% B: float, decades
	% C: float, units
	% D: float, tenths
	
	val = 100*A+10*B+C+0.1*D;
end