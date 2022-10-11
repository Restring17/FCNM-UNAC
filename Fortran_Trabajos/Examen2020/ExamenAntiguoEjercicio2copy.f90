program parcial
    implicit none
real::y1,y2,i
integer::x
open(unit=11,file="entrada.txt")
write(*,*)"======================================"
write(*,*)"Se analiza la funcion"
write(*,*)"======================================"

i=-3.1
ru: do x=0,61
    i=i+0.1
    write(*,*)"======================================"
    write(*,*)"Para x =", i
    if (i==-3) then
        y1=-1+(i+1)**2
         write(*,*) "La funcion es igual", y1
         write(*,*)"======================================"
    elseif (i>-3.and.-1>=i) then
        write (*,*)"La funcion no esta definida"
        write(*,*)"======================================"
        end if
        
    if ((-1<i).and.(3>=i)) then
        y2=-3*i
         write(*,*) "La funcion es igual", y2  
         write(*,*)"======================================"
    end if
    if(i>3) then
        write (*,*)"La funcion no esta definida"
        write(*,*)"======================================"
        exit ru

    end if
    write(11,*)i,y2 
end do ru

end program parcial