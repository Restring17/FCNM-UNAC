PROGRAM Notas
Use Resultado
integer::i,n
    real::T,nota
    nota=0
    T=0
write(*,*)'Escriba el numero de notas a promediar'
read(*,*)n
Inicio:  do i=1,n
		WRITE(*,*) 'Escribe una de tus notas'
         READ (*,*)nota
         T=T+nota
            IF (nota < 0 .OR. nota > 20) THEN
         WRITE (*,*) 'Nota incorrecta. Por favor vuelva a escribir su nota'
         cycle Inicio
            ELSE IF (nota < 11) THEN
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
    enddo Inicio
call Promediando(n,nota,T,Promedio)

END PROGRAM Notas
!--------------------------------------------------------------------------------
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