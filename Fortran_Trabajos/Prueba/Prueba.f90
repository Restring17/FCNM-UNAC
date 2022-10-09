program Prueba
    use types,  only: dp
    implicit none
    Real(dp)::x,y,z
    Write(*,*)'Escriba dos numeros'
    print*,''
    Read(*,*)x,y
    print*,''
z=x+y
    Write(*,*)'La suma de los dos numeros es',z
end program Prueba