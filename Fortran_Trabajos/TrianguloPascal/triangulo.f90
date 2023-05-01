program pascal_triangle
    implicit none
    
    integer :: i, j, rows, coef
    
    write(*,*) 'Introduce el número de filas para el triángulo de Pascal:'
    read(*,*) rows
    
    do i = 0, rows-1
       coef = 1
       do j = 0, i
          write(*,'(I4)', advance='no') coef
          coef = coef * (i-j)/(j+1)
       end do
       write(*,*)
    end do
    
  end program pascal_triangle