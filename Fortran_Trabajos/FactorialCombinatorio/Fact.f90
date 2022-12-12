Program Presencial
    Implicit none
    Integer::n,i,c
    Integer,allocatable,dimension(:)::v
    
    Do 
    
    Write(*,*)"Ingrese un numero entero:"
    Read(*,*)n
    
    allocate(v(1:n))
    
    n=n-1
    
    Do i=1,n+1
    
    Call Comb(n,i-1,c)
    v(i)=c
    end do
    
    
    Write(*,*)v
    
    deallocate(v)
    
    End do
    End program
!--------------------------------------------------
    Subroutine Comb(n,k,c) 
        Implicit none 
        Integer::i,n,p,k,c,q
         
            p=1
            do i=n-k+1,n
            p=p*i
            enddo
        
            q=1
            do i=1,k
            q=q*i
            enddo
        
        c=p/q
        
        End subroutine
        
