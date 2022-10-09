program OPERACION
real,dimension(11):: X
write(*,*)'=========================================='

X = (/(0.1*j,j=0,10)/)  !vector X= (/(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0)/)
!Los carácteres "(//)" son delimitadores.

write(*,'(A,11F8.2)')'       X=',X
write(*,'(A,11f8.2)')'  EXP(X)=',exp(X)
write(*,'(A,11f8.2)')' RAIZ(X)=',sqrt(X)
write(*,*)

end program OPERACION