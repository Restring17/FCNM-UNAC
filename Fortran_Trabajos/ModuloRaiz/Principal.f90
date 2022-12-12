program Principal
    Use valor
    implicit none
    Real::A=2,B=4,C=1
    write(*,*)Raiz(A,B,C)
end program Principal

module constantes
    contains
      !----------------------------------
    subroutine Operacion(a,b,c,delta)
      real,intent(in)::A,B,C
      real,intent(out)::Delta
      Delta=B**2-4*A*C
      end subroutine Operacion
      !----------------------------------
  end module constantes

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