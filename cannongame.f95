program cannongame
    ! Nicholas Maynard
    ! CSI 501
    ! Lab 12
    ! 04/20/2023
    ! This program is meant to emulate a cannon game.

    ! Clear out the memory
    implicit none

    ! Declare our variables
    real*8 :: x, y = 0.0 ! Intialize coordinates
    real*8 :: h = 0.01 ! Intitialize time interval
    real*8 :: g = 9.8 ! Intialize our gravity value
    real*8 :: theta, vx, vy, v ! Declare other variables
    real*8 :: pi = 4.D0*DATAN(1.D0) ! Calculate pi

    ! Input user values
    print*, 'Enter Velocity of Cannon Ball'
    read*, v

    print*, 'Enter Angle of Shot'
    read*, theta

    ! Get our velocity in the X direction.
    vx = v * cos((pi*theta) / 180)

    ! Get our velocity in the Y direction.
    vy = v * sin((pi*theta) / 180)

    ! Open output file
    open(13, file='coordinates.txt')

    ! Run our simulation
    do while (y >= 0.0)
        y = y + h * vy
        x = x + h * vx
        vy = vy - h*g
        write(13, *) x, y
    end do 

    ! Close output file
    close(13)

    
end program cannongame