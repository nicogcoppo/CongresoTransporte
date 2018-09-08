U=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/U.dat',' ',0,0)
P=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/P.dat',' ',0,0)
Mg=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/Mg.dat',' ',0,0)
Mdc=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/Mdc_num.dat',' ',0,0)
Mdc_ng=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/Mdc_num_ng.dat',' ',0,0)
Cg=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/Cg.dat',' ',0,0)
Kg=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/Kg.dat',' ',0,0)
tmin=dlmread('/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/tmin.dat',' ',0,0)
T=[[-tmin:tmin:tmin*(length(P)-2)];[-tmin:tmin:tmin*(length(P)-2)];[-tmin:tmin:tmin*(length(P)-2)]]
FIX=U(1,:)
for i = 0:(length(P)-3)
  x=i+2
  Pdc=P(:,x)+ ((2/(tmin)^2)*Mg-Kg)*U(:,x)+Mdc_ng*U(:,x-1)
  U(:,x+1)=inverse(Mdc)*Pdc
  U(1,:)=FIX
  progreso=(i/(length(P)-3))*100
  save -ascii '/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/progreso.dat' progreso	  
endfor

save -ascii '/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/U_listo.dat' U
save -ascii '/home/nico/_ORG/CEDI/CONGRESO_TRANSPORTE_2018/TRABAJO/CALCULOS/archivosOctave/T_listo.dat' T
	  
	  
