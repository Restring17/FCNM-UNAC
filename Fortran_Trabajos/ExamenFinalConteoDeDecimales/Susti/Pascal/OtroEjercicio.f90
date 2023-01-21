Program Pascal_triangle

implicit none

integer ,allocatable::Pascal(:,:)

integer(8) n ,k ,l

print*,"Please Enter the rows of Pascal's Triangle:"

read(*,*) n

allocate (Pascal(n,n))

do k=1,n

do l=1,n

if(l/=1)then

Pascal(k,l)=0

else

Pascal(k,l)=1

end if

end do

end do

do k=2,n

do l=2,n

if(k/=l)then

Pascal(k,l)=Pascal(k-1,l)+Pascal(k-1,l-1)

else

Pascal(k,l)=1

end if

end do

end do

do k=1,n

print*,Pascal(k,1:k)

end do !deallocate Pascal

end program Pascal_triangle