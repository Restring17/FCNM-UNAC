Program producto_matricial
    Implicit None
    Real,Dimension(10,10,3)::A  !A(:,:,1)=A , A(:,:,2)=B , A(:,:,3)=C
    integer::i,j,k
    Integer,Dimension(3,2)::n  !n(1,1)=n_A , n(1,2)=m_A , n(2,1)=n_B , n(2,2)=m_B , ...
    Character,dimension(3)::B
    Character::p
    
    write(*,'(//15x,A//)')'Este programa realiza el producto matricial'
    Write(*,'(5x,A)')'Ingreso de datos:'
    
    B(1)='A'
    B(2)='B'
    B(3)='C'
    principal: Do
    i=1
    matriz: Do
         A(:,:,i)=0
        write(*,'(/5x,3A,$)')'Ingrese el orden n,m de la matriz ',B(i),' : '
        Read(*,*)n(i,1),n(i,2) !n,m
        if(i==2)then
           if(n(1,2)/=n(2,1))then   !m_A=n_B
               write(*,'(/5x,A)')'Los ordenes de las matrices son incompatibles para el producto'
            Ab: Do
               write(*,'(/5x,A)')'Ingrese B para ingresar el orden de la matriz B'
               write(*,'(5x,A)')'Ingrese A para ingresar nueva matriz A'
               Read(*,*)p
            select case(p)
                case('a','A')  !
                   i=1
                   Cycle matriz
                case('b','B')  !
                   Cycle matriz
                case default
                   write(*,'(/10x,A)')'Opcion ingresada incorrecta, vuelva a ingresar'
                   Cycle Ab
            end Select
            Enddo Ab
    
           endif
        endif
        print*,''
        Do j=1,n(i,1)
            write(*,'(5x,A,I2,A,$)')'Ingrese la fila ',j,' : '
            Read(*,*)(A(j,k,i),k=1,n(i,2))
           Enddo
        write(*,'(//10x,3A/)')'Matriz ',B(i),' Ingresada:'
        Do j=1,n(i,1)
            write(*,'(7x,10(F9.5,1x))')(A(j,k,i),k=1,n(i,2))
           Enddo
        sn: Do
            write(*,'(/5x,A,$)')'¿Desea conservar esta matriz? S/N '
            Read(*,*)p
            select case(p)
                case('s','S')  !sale del bucle sn sin hacer nada
                   Exit sn
                case('n','N')  !Regresa al bucle matriz para ingresar de nuevo la matriz
                   Cycle matriz
                case default
                   write(*,'(/10x,A)')'Opcion ingresada incorrecta, vuelva a ingresar'
                   Cycle sn
            end Select
        Enddo sn
        if(i==2) exit matriz
        i=i+1
    enddo matriz
    
    print*,''
    !Producto matricial
    !el nuevo orden de la matriz es: n_A , m_B
    n(3,1)=n(1,1)  !n_C
    n(3,2)=n(2,2)  !m_C
    write(*,'(10x,A/)')'El producto matricial C=AxB es:'
    write(*,'(15x,A//)')'Matriz C calculada:'
    do i=1,n(3,1)  !para las filas
       do j=1,n(3,2) !para las columnas
          A(i,j,3)=0
          do k=1,n(1,2)
             A(i,j,3)=A(i,j,3)+A(i,k,1)*A(k,j,2)
          enddo
       enddo
       write(*,'(7x,10(F12.5,1x))')(A(i,j,3),j=1,n(3,2))
    enddo
    write(*,'(/15x,A/)')'Producto calculado satisfactoriamente.'
    write(*,'(15x,A)')'¿Desea volver a cacular otro produto?'
    write(*,'(/5x,A,$)')'Presione la tecla S para reiniciar, o cualquier otra para salir: '
    Read(*,*)p
    if(.not.(p=='S'.or.p=='s')) Exit principal
    enddo principal
                     
    write(*,'(//15x,A////)')'Programa terminado'
    end program