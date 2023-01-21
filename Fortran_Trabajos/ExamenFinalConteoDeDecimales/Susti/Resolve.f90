program Pascal
integer::n,i
character,allocatable::x(:)
do
read(*,*)n
allocate(x(1:n))
    do i=1,n
        x(n)=achar(64+n)
        exit
    end do
    write(*,*)n,x,n
    deallocate(x)
end do    
end program Pascal