function controlPD (kp,Td, sistema)
	if(nargin()==2)
		sistema=tf(1,[1,1, 0.1]);
	else
	end
	N=10;
	controlador=tf(kp*([Td,1]),[1/N,1]);
	realimientacion = feedback( sysmult( controlador ,sistema), tf(1,1));
	step(realimientacion);
endfunction
	
			