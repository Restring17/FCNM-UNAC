program practica
implicit none
integer::i,n,x,y
Real::sx,sy,sxy,sxx,a,b
open(10,file='Tabla.txt')
Write(*,*)'Ingrese el numero de par de datos'
Read(*,*)n

sx=0
sy=0
sxy=0
sxx=0

Do i=1,n
   write(*,*)'Ingrese un par de datos'
   read(*,*)x,y
   
   sx=sx+x
   sy=sy+y
   sxy=sxy+x
   sxx=sxx+x*x
   write(10,'(3x,i4)')x
   write(10,'(3x,i4)')y
   
   end do
   
   a=(sy*sxx-sx*sxy)/(n*sxx-sx**2)
   b=(n*sxy-sx*sy)/(n*sxx-sx**2)
   
   write(*,*)'La pendiente es =',b
   write(*,*)'El intersecto es =',a
   
end program practica
   
