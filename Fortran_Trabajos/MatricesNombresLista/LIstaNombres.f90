PROGRAM UNAC
    REAL,DIMENSION(10)::X !arreglo real unidimensional
    COMPLEX,DIMENSION(10)::Y !arreglo complejo unidimensional
    CHARACTER(len=8),DIMENSION(10)::NOMBRE !arreglo cadena unidimensional
    X(1)=3.2
    X(2)=7.5
    X(3)=2.2
    X(4)=8.8
    X(5)=6.0
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
    DO I=1,5
    WRITE(*,*)NOMBRE(I)
    END DO
    END PROGRAM UNAC