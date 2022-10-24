Program arreglos2
    Implicit none
    real,dimension(-5:5,-5:5)::A
    Real,dimension(3,4)::B
    integer::i,j !,v(10),w(20)
    
    open(1,file='salida.txt')
    
    do i=-5,5
        do j=-5,5
            A(i,j)=exp(sqrt(abs(real(i+j))))
        enddo
    enddo
    
    write(*,'(//)')		   
    write(*,'(10x,5x,20(3x,i2,2x))')(i,i=-5,5)
    write(*,*)
    do i=-5,5
        write(1,'(10x,i2,3x,20(1x,f6.3))')i,A(i,:)
    enddo
    
    write(*,'(//)')
    !v=(/0,3,-2,4,-1,-3,-5,0,4,3/)
    !w=(/-2,5,-2,-4,0,1,-3,5,-2,1,-4,-4,-3,2,-1,0,-2,-5,-2,3/)
    B=A(-5:5:4,-4:5:3)
    
    !do i=1,10
    !	write(*,'(10x,20(2x,i2,1x,i2))')(v(i),w(j),j=1,20)
    !enddo
    write(*,*)
    Do i=-5,5,4
        write(*,'(10x,20(2x,i2,1x,i2))')(i,j,j=-4,5,3)
    enddo
    write(*,*)
    
    do i=1,3
        write(*,'(10x,20(1x,f6.3))')B(i,:)
    enddo
    write(*,'(//)')
    end program