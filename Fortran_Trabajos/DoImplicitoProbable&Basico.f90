PROGRAM UNAC
    INTEGER,DIMENSION(5)::X,Y 
    X=(/2,7,3,1,9/)

    READ(*,*)X

    Y=2*X

    DO I=1,5
        WRITE(*,*)Y(I)
    END DO
    END PROGRAM UNAC
    