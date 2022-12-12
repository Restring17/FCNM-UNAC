module Operacion
    Implicit none 
contains
subroutine combinacion(A,K,T,C)
    Implicit none
integer::A,K,T,C
C=A/(K*(T))
write(*,*)'El Combinatorio es',C

end subroutine combinacion


end module Operacion
