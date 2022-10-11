program Parcial
    implicit none
integer::i
! Character::p
Real,dimension(3)::A,B,C,u,P,Q,R
! real,dimension(3)::A=(/ 2, 1, 3/)
real::x,y,z,MD,a2,b2,c2,D
! Real::P
! real,dimension(3)::B=(/ 1, 3, 3/)
Uno: do i=1,3
    Write(*,*)'Ingrese un punto para el primer vector'
    Read(*,*)A(i)
enddo Uno
do i=1,3
    write(*,*)'Ingrese un punto para el segundo vector'
    read(*,*)B(i)
end do
P(1)=-1
P(2)=0
P(3)=1
Q(1)=3
Q(2)=4
Q(3)=3
write(*,*)'Los vectores son'
write(*,*)A
write(*,*)B
x= A(2)*B(3)-A(3)*B(2)
y= A(3)*B(1)-A(1)*B(3)
z= A(1)*B(2)-A(2)*B(1)
C(1)=x
C(2)=y
C(3)=z
print*,'==========================================================================='
MD=sqrt(sum(C*C))
u=C/MD
print*,'==========================================================================='
a2=P(1)-Q(1)
b2=P(2)-Q(2)
c2=P(3)-Q(3)
R(1)=a2
R(2)=b2
R(3)=c2
D=sum(R*u)
write(*,*)'El Producto Vectorial es ='
write(*,*)x,y,z !Producto Vectorial
print*,'==========================================================================='
write(*,*)'El Modulo es ='
write(*,*)MD  !Modulo
print*,'==========================================================================='
write(*,*)'El vector Unitario es='
write(*,*)u !Vector Unitario
print*,'==========================================================================='
write(*,*)'La distancia entre P a Q='
write(*,*)D !Distancia entre P a Q
end program Parcial