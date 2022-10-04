PROGRAM matrices
    INTEGER,DIMENSION (2,3,2)::x=&
    RESHAPE((/1,2,3,4,5,6,7,8,9,10,11,12/),(/2,3,2/))
    DO k=1,2
    DO j=1,3
    DO i=1,2
    WRITE(*,*)'x(',i,',',j,',',k,')=',x(i,j,k)
    END DO
    END DO
    END DO
    END PROGRAM matrices