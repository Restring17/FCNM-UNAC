program ABCDario
    integer::i,n    
    character,dimension(13)::x
    read(*,*)n
    do i=n,77
        x=achar(i)
        write(*,*)x
    end do
    end program ABCDario