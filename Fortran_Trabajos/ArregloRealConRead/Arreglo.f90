program Unac
    REAL,DIMENSION(-2:10)::X
    REAL::RESULTADO
    DO I=-2,5
    WRITE(*,*)'Ingrese un numero'
    READ(*,*)X(I)
    END DO
    RESULTADO=X(4)*X(5)
    WRITE(*,*)RESULTADO
end program Unac