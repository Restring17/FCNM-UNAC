program Examen
    integer::m,k,n,q
    real::r
    integer,allocatable,dimension(:)::A
    write(*,'(10x,A)')'Este programa realiza'
    print*,'========================================================================'
    write(*,'(10x,A)')'Ingrese un valor n'
    read(*,*)n
    p=1
    k=0
    r=1
    m=1
    allocate(A(1:n))
    
    do while (q<=p .and. m<=n)
        p=p*100-q
        k=k+1
        m=m+1
        r=r+(k/10**m)
        q=((r*2)*(10**m)+k)*k
        write(*,*)r
        write(*,*)q
        
    enddo
    
    end program 