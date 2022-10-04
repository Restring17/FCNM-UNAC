PROGRAM UNAC
    REAL::RESULTADO1 !variable real
    REAL,DIMENSION(10)::X !arreglo real unidimensional
    COMPLEX,DIMENSION(10)::Y !arreglo complejo unidimensional
    COMPLEX::RESULTADO2 !variable compleja
    CHARACTER(len=8),DIMENSION(10)::NOMBRE !arreglo cadena unidimensional
    X(1)=3
    X(2)=7
    X(3)=2
    X(4)=8
    X(5)=6
    Y(1)=(3,2)
    Y(2)=(1,1)
    Y(3)=(2,1)
    Y(4)=(3,2)
    Y(5)=(2,3)
    NOMBRE(1)='Lucho'
    NOMBRE(2)='Ricardo'
    NOMBRE(3)='Julio'
    NOMBRE(4)='Pedro'
    NOMBRE(5)='Carlos'
    RESULTADO1=X(1)*X(2)
    RESULTADO2=X(1)*Y(1)
    WRITE(*,*)RESULTADO1
    WRITE(*,*)RESULTADO2
    WRITE(*,*)NOMBRE(3)
    END PROGRAM UNAC