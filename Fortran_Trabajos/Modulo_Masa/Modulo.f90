module variables
    !------------------------------
    contains
        subroutine Datos(m,x,y)
            implicit none
            real,dimension(4)::m,x,y
            write(*,*)'Ingrese los valores de masa'
            read(*,*)m
            write(*,*)'Ingrese las coordenadas x'
            read(*,*)x
            write(*,*)'Ingrese las coordenadas y'
            read(*,*)y
        end subroutine Datos
    !------------------------------------
end module variables
