program simple_calc
  implicit none
  integer :: firstValue
  integer :: secondValue
  character :: operator

  do while (.true.)
    print *, 'Please enter first number: '
    read(*,*) firstValue
    print *, 'Please enter second number: '
    read(*,*) secondValue
    print *, 'Please enter operator: '
    read (*,"(A1)") operator

    select case (operator)
        case ('+')
            print *, (firstValue + secondValue)
        case ('-')
            print *, (firstValue - secondValue)
        case ('*')
            print *, (firstValue * secondValue)
        case ('/')
            if (secondValue == 0) then
                print *, 'Sorry, but division by zero is illegal here :('
                cycle
            end if
            print *, (firstValue / secondValue)
        case default
            print *, 'Oops, unknown operator was found!'
    end select
  end do

end program simple_calc