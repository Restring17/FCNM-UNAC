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