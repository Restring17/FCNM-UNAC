program	Tarea
implicit none
real::x

integer::n,i




print*,""
write(*,'(5x,A)') "El siguiente programa demuestra una seria numerica "

print*,""

open(1,file='resultados1.txt',status='unknown')
write(*,*)'Establesca el numero de intervalos'
read*,n
write(*,'(3x,A,$)') "Ingrese un numero: "
read*,x

do i=1,n
   
 if(i>=0) then

 x=x+i*log(x)

 else 
 x=x-i*exp(x)
  
  endif
   
 write(1,"(3x,F12.6)")x 
end do

print*,""

write(*,'(5x,A,$)')"El resultado final de la serie es: "
write(*,'(F12.6)')x
print*,""

endprogram Tarea

	   








