function controlPID (kp,Ti,Td, sistema)
	if(nargin()==3)
		sistema=tf(1,[1,1, 0.1]);
	else
	end
	N=10;
	#controlador=tf(kp*([Td/Ti, 1, 1/Ti]),[1/N,1, 0]);
	controlador=tf(kp*[(Ti*Td/N+Ti*Td), (Ti+Td/N), 1],[Ti*Td/N, Ti, 0]);
	realimientacion = feedback( sysmult( controlador ,sistema), tf(1,1));
	step(realimientacion);
endfunction
	
			