program ABCDario
    real::e,r1,r2
    character::x
    parameter(e=2.71828182846)
    write(*,*)'Escribe una letra del abecedario'
    read(*,*)x
    ! write(*,*)iachar(x)
    if (iachar(x)<78) then
        write(*,'(10x,A)')'0'
        r1=(e**2)+(e**1)+(e**0)+(e**(-1))+(e**(-2))
        write(*,'(10x,A,5x,F4.1)')'El Resultado de la operacion es',r1
    else if (iachar(x)>77) then
        write(*,*)1
        r2=sin(1.0)+sin(2.0)+sin(3.0)+sin(4.0)+sin(5.0)+sin(6.0)
        write(*,'(10x,A,5x,F4.1)')'El Resultado de la operacion es',r2
    end if

    end program ABCDario