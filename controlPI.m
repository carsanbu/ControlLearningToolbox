function controlPI (kp,Ti, sistema)
	if(nargin()==2)
		sistema=tf(1,[1,1, 0.1]);
	else
	end
	controlador=tf(kp*([Ti, 1]), [Ti, 0]);
	realimientacion = feedback( sysmult( controlador ,sistema), tf(1,1));
	step(realimientacion);
endfunction
	
			