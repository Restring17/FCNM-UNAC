module Resultado
    implicit none  
contains
Subroutine Promediando(n,nota,T,Promedio)
    integer::n
    real::T,nota,Promedio  
    Promedio=T/n
    write(*,'(10x,A22,5x,F4.1)')'El promedio de nota es :',Promedio
    nota=Promedio
    IF (nota < 11) THEN
        WRITE (*,*) 'Reprobado'
           ELSE IF (nota < 15) THEN
        WRITE (*,*) 'Aprobado'
           ELSE IF (nota < 18) THEN
        WRITE (*,*) 'Notable'
           ELSE IF (nota < 20) THEN
        WRITE (*,*) 'SOBRESALIENTE'
           ELSE IF (nota==20) THEN
        WRITE (*,*) 'Perfecto'
       END IF
    end Subroutine 
    
end module Resultado
