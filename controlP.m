function controlP (P, sistema)
	if(nargin()==1)
		sistema=tf(1,[1,1, 0.1]);
	else
	end
	controlador=tf(P,1);
	realimientacion = feedback( sysmult( controlador ,sistema), tf(1,1));
	step(realimientacion);
endfunction
	
			