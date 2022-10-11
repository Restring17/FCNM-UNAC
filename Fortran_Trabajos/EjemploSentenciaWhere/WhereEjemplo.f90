PROGRAM ejemplo
    REAL,DIMENSION (2,4)::v= RESHAPE((/-1.,2.,3.3,4.0,-5.5,0.,-7.0,8.8/),(/2,4/))
    WRITE(*,*)'------------------------------v--------------------------------'
    WRITE(*,*)v
    WHERE(v>0) v=SQRT(v)
    WRITE(*,*)'---------------------------SQRT(v)-----------------------------'
    WRITE(*,*)v
    END PROGRAM ejemplo