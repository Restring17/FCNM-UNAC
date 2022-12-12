program principal
    implicit none
Real::A=2,B=3,X,Operacion

X=Operacion(A,B)

Write(*,'(10x,F4.1)')X

    
end program principal


!---------------------------------------------------------------------
Real Function Operacion(A,B)
Real::A,B

Operacion=A**2+B**2


end function Operacion