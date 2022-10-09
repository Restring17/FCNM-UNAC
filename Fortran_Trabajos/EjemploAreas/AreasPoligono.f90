PROGRAM AREA
    IMPLICIT NONE
    INTEGER::I,J,N
    REAL::A,A1,A2,S
    REAL,DIMENSION(10)::X,Y
    WRITE(*,*)'INGRESE EL NUMERO DE PUNTOS'
    READ(*,*)N
    DO I=1,N
    WRITE(*,*)'INGRESE LOS X,Y'
    READ(*,*)X(I),Y(I)
    END DO
    A1=(X(1)-X(N))*(Y(1)+Y(N))
    S=0
    DO J=1,N-1
    S=S+(X(J+1)-X(J))*(Y(J+1)+Y(J))
    END DO
    A2=S
    A=ABS((A1+A2)/2)
    WRITE(*,*)A
    END PROGRAM AREA