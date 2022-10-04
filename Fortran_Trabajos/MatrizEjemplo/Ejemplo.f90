PROGRAM UNAC
    integer,DIMENSION(-1:2)::X,Y,S,M
    X(-1)=2
    X(0)=1
    X(1)=3
    X(2)=5
    Y(-1)=-3
    Y(0)=4
    Y(1)=-2
    Y(2)=7
    S=X+Y
    M=X*Y
    DO I=-1,2
    WRITE(*,*)X(I),Y(I),S(I),M(I)
    END DO
    END PROGRAM UNAC