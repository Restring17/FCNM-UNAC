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
    