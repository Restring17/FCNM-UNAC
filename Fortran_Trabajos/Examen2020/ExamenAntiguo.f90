program PreExamen
    implicit none
integer::n,i
real:: x,xi,y,z,s,m
write(*,*)'Ingrese numero de valores como limite 10'
read(*,*)n
x=0
z=0
if (n>=10) then
    write(*,*)'Te dije que no'
    return
    endif
do  i=1,n
    write(*,*)'Ingrese un numero'
    read(*,*)xi
    x=xi+x
    z=z+xi**2
end do
y=x/n
m=y**2
s=sqrt((z-n*m)/(n-1))
Write(*,*)'El resultado del problema a sera =',y
Write(*,*)'El resultado del problema b sera =',s
end program PreExamen