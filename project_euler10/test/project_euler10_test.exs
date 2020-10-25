defmodule ProjectEuler10Test do
  use ExUnit.Case
  doctest ProjectEuler10

  test "sum of primes bellow:" do
    assert ProjectEuler10.sum_of_primes(10) == 17
  end
end
