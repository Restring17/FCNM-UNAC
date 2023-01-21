program Pascal
integer::n,i
character,allocatable::x(:)

read(*,*)n
allocate(x(1:n))
    do i=1,n
        x(n)=achar(64+1)
        write(*,*)n,x,n
    end do    
end program Pascal