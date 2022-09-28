Program Date_25_08_2022
Implicit none

character(20)::a,b,c
integer::i1,i2,j1,j2

print*,'Ingrese la palabra 1:'
read*,b
print*,'Ingrese intervalo de posiciones a tomar:'
read*,i1,j1
print*,''
print*,'Ingrese la palabra 2:'
read*,c
print*,'Ingrese intervalo de posiciones a tomar:'
read*,i2,j2

!concatenacion:
a=b(i1:j1)//c(i2:j2)

print*,''
print*,'La concatenacion es:',a
print*,''

print*,'la nueva palabra es:',a

end program Date_25_08_2022