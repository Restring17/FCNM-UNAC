PROGRAM UNAC
    CHARACTER(LEN=10),DIMENSION(10)::NOMBRE
    REAL,DIMENSION(10)::PESO,ALTURA
    REAL::IMC
    CHARACTER(LEN=20)::ESTADO
    OPEN(1,FILE='RESULTADO.DAT')
    DO I=1,2
    WRITE(*,*)'Ingrese: Nombre,Peso,Altura'
    READ(*,*)NOMBRE(I),PESO(I),ALTURA(I)
    END DO
    DO J=1,2
    IMC=PESO(J)/ALTURA(J)**2
    IF (IMC<15)THEN
    ESTADO='DELGADEZ MUY SEVERA'
    ELSE IF(IMC>=15.AND.IMC<15.9)THEN
    ESTADO='DELGADEZ SEVERA'
    ELSE IF(IMC>=16.AND.IMC<18.4)THEN
    ESTADO='DELGADEZ'
    ELSE IF(IMC>=18.5.AND.IMC<24.9)THEN
    ESTADO='PESO SALUDABLE'
    ELSE IF(IMC>=25.AND.IMC<29.9)THEN
    ESTADO='SOBREPESO'
    ELSE IF(IMC>=30.AND.IMC<34.9)THEN
    ESTADO='OBESIDAD MODERADA'
    ELSE IF(IMC>=35.AND.IMC<39.9)THEN
    ESTADO='OBESIDAD SEVERA'
    ELSE IF(IMC>40)THEN
    ESTADO='OBESIDAD MUY SEVERA'
    ENDIF
    WRITE(1,*)NOMBRE(J),PESO(J),ALTURA(J),IMC,' ',ESTADO
    END DO
    END PROGRAM UNAC    