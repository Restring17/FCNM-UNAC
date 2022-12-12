program semana9JuanVal
    implicit none
    !Arreglos
    real,dimension(1:6)::a,b,c
    real,dimension(3,2)::x1
    real,dimension(2,3)::x2
    real,dimension(6,1)::x3

    real,allocatable,dimension(:)::p

    integer::i,o,n,l
    character(2)::r
    character::t
    
     a=(/1,2,3,4,5,6/)

    write(*,"(10x,A,6(1x,F3.1))")"Conociendo el arreglo: ",a
    write(*,"(/,10x,A)")"Ingrese ahora las componentes de un arreglo B"
    do i=1,6
        write(*,"(15x,A,I2,A,$)")"Ingrese la componente ",i," : "
        read(*,*)b(i)
    enddo
    Write(*,"(/,10x,A,6(1x,F3.1))")"El arreglo ingresado B es : ",b
  
    !Sentencia Where
    
    write(*,"(/,10x,A)")"Entonces calculando la raiz de cada componente mayor o igual que cero de B : "
    where(b>=0) C=sqrt(b)
    write(*,"(/,15x,A,6(1x,F3.1))")"EL nuevo arreglo, que llamaremos C es : ",c
    
    !Reshape
    write(*,"(/,15x,A,$)")"Desea transformar esta arreglo en una matriz: "
    read(*,*)r
    select case(r)
    case("si")
        prin: do
        write(*,"(/,15x,A)")"Que tipo de matriz desea: "
        write(*,"(4(/,20x,A))")"(1) 3x2","(2) 2x3","(3) 1x6","(4) 6x1"
        write(*,"(/,15x,A,$)")"La opcion ingresada es: "
        read(*,*)o
            
        select case(o)
        case(1)
          x1=Reshape(a,(/3,2/))
          
          write(*,"(/,15x,A,6(1x,F3.1))")"La matriz C es: "
            do i=1,3
            write(*,"(20x,2(2x,F3.1))")(x1(i,l),l=1,2)
            enddo
             write(*,"(15x,A,$)")"Desea cambiar la opcion: "
             read(*,*)r
            select case(r)
            case("si")
                cycle prin
            case("no")
                exit prin
            case default
                write(*,"(15x,A)")"Incorrecto, escriba nuevamente"
            endselect
        case(2)
            x2=reshape(c,(/2,3/))
            write(*,"(/,15x,A,6(1x,F3.1))")"La matriz C es: "
            do i=1,2
                write(*,"(20x,3(2x,F3.1))")(x2(i,l),l=1,3)
            enddo
            write(*,"(15x,A,$)")"Desea cambiar la opcion: "
             read(*,*)r
            select case(r)
            case("si")
                cycle prin
            case("no")
                exit prin
            case default
                write(*,"(15x,A)")"Incorrecto, escriba nuevamente"
            endselect
        case(4)
            x3=reshape(c,(/6,1/))
            write(*,"(/,15x,A,6(1x,F3.1))")"La matriz C es: "
            do i=1,6
                write(*,"(22x,F3.1)")(x3(i,1))
            enddo
            write(*,"(15x,A,$)")"Desea cambiar la opcion: "
             read(*,*)r
            select case(r)
            case("si")
                cycle prin
            case("no")
                exit prin
            case default
                write(*,"(15x,A)")"Incorrecto, escriba nuevamente"
            endselect
        case(3)    
            write(*,"(/,15x,A,6(1x,F3.1))")"La matriz C es: ",c
            write(*,"(15x,A,$)")"Desea cambiar la opcion: "
             read(*,*)r
            select case(r)
            case("si")
                cycle prin
            case("no")
                exit prin
            case default
                write(*,"(15x,A)")"Incorrecto, escriba nuevamente"
            endselect
        case default
            write(*,"(/,15x,A)")"El numero ingresado no es valido, intente nuevamente"
        end select

        enddo prin
    case("no")
        write(*,"(/,15x,A)")"Se conservo el arreglo"
    end select

    !Operaciones con arreglos
    write(*,"(/,10x,A)")"Teniendo a los arreglos A y C anteriores"
    write(*,"(/,10x,A,$)")"Escoja entre (+,-,*) para realizarlo: "
    read(*,*)t
        select case(t)
        case("+")
            write(*,"(/,15x,A,6(1x,F3.1))")"La suma es : ",a+c
        case("-")
            write(*,"(/,15x,A,6(1x,F3.1))")"La resta es : ",a-c
        case("*")
            write(*,"(/,15x,A,6(1x,F3.1))")"La multiplicacion es : ",a*c
        case default
            write(*,"(/,15x,A)")"Caracter invalido, ingrese nuevamente"
        end select

    !Arreglos dinamicos
        
       write(*,"(/,10x,A,$)")"Ingrese la cantidad de componentes que desea para un arreglo: "
       read(*,*)n
       allocate(p(n))
       do i=1,n
       write(*,"(15x,A,I2,A,$)")"Ingrese la componente",i," : "
        read(*,*)p(i) 
       enddo
       write(*,"(10x,A)")"El arreglo ingresado es: "
       write(*,*)p
       

end program semana9JuanVal