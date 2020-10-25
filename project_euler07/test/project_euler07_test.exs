defmodule ProjectEuler07Test do
  use ExUnit.Case
  doctest ProjectEuler07

  test "prime number at Nth position" do
    assert ProjectEuler07.prime_number_at_position(2,6) == 13
    assert ProjectEuler07.prime_number_at_position(2,10001) == 104743
  end

  test "value is prime?" do
    assert ProjectEuler07.is_prime?(13,2) == true
  end

end
