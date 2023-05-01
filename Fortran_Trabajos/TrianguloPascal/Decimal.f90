program square_root
    implicit none
    
    integer :: i, n
    real :: x, y
    
    write(*,'(//10x,A//)') 'Introduce el número de decimales que deseas calcular:'
    read(*,*) n
    
    x = 1.0
    do i = 1, n
       y = (x + 2.0/x) / 2.0
       write(*,'(I2,". ",I20)') i, floor(y*10**i)
       x = y
    end do
    
  end program square_root