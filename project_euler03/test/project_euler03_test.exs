defmodule ProjectEuler03Test do
  use ExUnit.Case
  doctest ProjectEuler03

  test "largest prime factor" do
    assert ProjectEuler03.largest_prime_factor(13195) == 29
    assert ProjectEuler03.largest_prime_factor(600851475143) == 6857
  end
end
