program abc
Use Bucle
Use Operacion
Implicit none
integer::i,n1,A,n2,k,n3,T,C
write(*,*)'Escribe el primer factorial'
read(*,*)n1
write(*,*)'Escribe el segundo factorial'
read(*,*)n2
call Factorial1(i,n1,A)
call Factorial2(i,n2,k)
call Factorial3(i,n3,n1,n2,T)
call combinacion(A,K,T,C)

end program

!-------------------------------------------------------------------------------------------------------------

module Bucle
    Implicit none
    contains
    subroutine Factorial1(i,n1,A)
        Implicit none
    integer::i,n1,A
    A=1
    do i=1,n1
    A=A*i
    end do
    write(*,*)'El primer factorial es',A
    end subroutine Factorial1
    
    Subroutine Factorial2(i,n2,k)
        Implicit none
    integer::i,n2,k
    K=1
    do i=1,n2
    K=K*i
    end do
    write(*,*)'El segundo factorial es',K
    end subroutine Factorial2
    
    Subroutine Factorial3(i,n3,n1,n2,T)
        Implicit none
    integer::i,n3,n1,n2,T
    n3=n1-n2
    T=1
    do i=1,n3
    T=T*i
    end do
    end subroutine Factorial3
    
    end module Bucle
!------------------------------------------------------------------------------------------------------------------
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
        
