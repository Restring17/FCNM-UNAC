program parcial
    implicit none
real::y1,y2,i
integer::x
open(unit=11,file="entrada.txt")
write(11,*)"======================================"
write(11,*)"Se analiza la funcion"
write(11,*)"======================================"

i=-3.1
ru: do x=0,61
    i=i+0.1
    write(11,*)"======================================"
    write(11,*)"Para x =", i
    if (i==-3) then
        y1=-1+(i+1)**2
         write(11,*) "La funcion es igual", y1
         write(11,*)"======================================"
    elseif (i>-3.and.-1>=i) then
        write (11,*)"La funcion no esta definida"
        write(11,*)"======================================"
        end if
        
    if ((-1<i).and.(3>=i)) then
        y2=-3*i
         write(11,*) "La funcion es igual", y2  
         write(11,*)"======================================"
    end if
    if(i>3) then
        write (11,*)"La funcion no esta definida"
        write(11,*)"======================================"
        exit ru

    end if 
end do ru

end program parcial