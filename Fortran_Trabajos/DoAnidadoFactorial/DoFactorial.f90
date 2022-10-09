Program ABC
    Implicit None
    Integer::n,i,j,k,p
    
    write(*,'(5x,A)')'PROGRAMA QUE CALCULA EL FACTORIAL modificado DE UN NUMERO'
         print*,''
    write(*,'(5x,A)')' Este programa le ofrece hasta 15 intentos'
         print*,''
    principal: do k=1,3
             write(*,'(2x,A,I1)')'Generacion: ',k
             print*,''
    intento:   do  i=1,15
                 write(*,'(5x,A,I2,$)')'Intento ',i
                 write(*,'(5x,A,$)')'Ingrese un numero menor o igual a 15, use 0 para salir: '
                 read(*,*)n
                 if(n==0)exit principal
                 if(n>15)cycle intento
                 p=1
                 factorial: do j=1,n
                       p=p*j
                    if(i+j==12)exit principal
                    print*,i,j,p
                 enddo factorial
                 write(*,'(7x,A,I10)')'El factorial modificado del numero es: ',p
                 print*,''
    enddo intento
       write(*,*)' pasamos a la siguiente generacion'
       print*,''
    enddo principal
    print*,''
    write(*,*)' programa terminado'
    print*,''
    end program