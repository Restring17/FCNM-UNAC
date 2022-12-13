program	examen
    implicit none
    integer::p,q,m,k,n
    real::r
    integer,allocatable::A(:)
    
    p=100
    r=1
    
    write(*,'(/5x,A,$)')"Ingrese un numero:"
    read(*,*)n
    
    allocate(A(1:n))
    
    do m=1,n
    
         k=0
         q=0
         do while(q<=p)
          
           q=(r*2*10**m+k)*k
     
     k=k+1
    end do
     
     k=k-2
    
     q=(r*2*10**m+k)*k
    
     p=(p-q)*100
     r=(r+(real(k)/real(10**m)))
    
     a(m)=k
    
     end do
    
     print*,r
    
     write(*,'(/5x,A)')'Los Decimales son:'
     write(*,'(/5x,100(I1,3x))')(A(m),m=1,n)
     deallocate(A)
     print*,''
    
end program examen