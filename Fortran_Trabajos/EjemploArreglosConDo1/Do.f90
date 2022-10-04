PROGRAM UNAC
    REAL,DIMENSION(10)::X
    REAL::RESULTADO
    DO I=1,5
    WRITE(*,*)'Ingrese un numero'
    READ(*,*)X(I)
    END DO
    RESULTADO=X(4)*X(5)
    WRITE(*,*)RESULTADO
    END PROGRAM UNAC    