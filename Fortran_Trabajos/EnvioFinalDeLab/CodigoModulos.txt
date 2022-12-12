program Masa
    Use variables
    Use Operaciones
    implicit none
    real,dimension(4)::m,x,y
    real::xcm,ycm
	call Datos(m,x,y)
    call centro(m,x,y,xcm,ycm)

end program Masa

    
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


module Operaciones
    !----------------------------------------------------------
    contains
        subroutine centro(m,x,y,xcm,ycm)
            implicit none
            real,dimension(4)::m,x,y
            real::xcm,ycm,smx,smy
            real::MT
            MT=sum(m)
            smx=sum(m*x)
            smy=sum(m*y)
            xcm=smx/MT
            ycm=smy/MT
			print*,'---------------------------------------------------'
			write(*,*)'Las coordenadas del centro masa son',xcm,ycm
        end subroutine centro
    !-----------------------------------------------------
    end module Operaciones