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