module valor
    use constantes
    contains
    !----------------------------------
    real function Raiz(a,b,C)
    implicit none
    real::a,b,Delta,C
    call Operacion(A,B,C,Delta)
    Raiz=(-B+SQRT(Delta))/(2*A)
    end function Raiz
    !----------------------------------

end module valor