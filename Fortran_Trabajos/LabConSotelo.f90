program Vectores
    implicit none
    integer::i,i0,iff,ip
    real,dimension(-4:10)::X
    do i=-4,10
        X(i)=exp(sin(real(i)))
    enddo
    Write(*,'(10x,A16)')'El vector X es ='
    write(*,*)''
    write(*,'(5x,A8,3x,5x,20(3x,i2,2x))')'indice: ',(i,i=-4,10)
    write(*,'(20x,20(1x,f6.3))')X
    write(*,*)'===================================================================================================================='
    Ingreso: do
            write(*,*)'Ingrese el triplete de indices: '
            read(*,*)i0,iff,ip
            if(i0<-4 .or. iff>10) then
                write(*,*)'Ingreso Incorrecto'
                cycle Ingreso
            else
                exit Ingreso
            endif        
        enddo Ingreso
        print*,''
    Resultados:do
                write(*,'(10x,A19)')'Los componentes son'
                write(*,'(5x,20(5x,i2,2x))')(i,i=i0,iff,ip)
                write(*,'(5x,20(3x,f6.3))') X(i0:iff:ip)
                exit
        enddo Resultados     
    
    

    
end program Vectores