defmodule ProjectEuler01Test do
  use ExUnit.Case
  doctest ProjectEuler01

  test "multiples of 3 and 5" do
    assert ProjectEuler01.multiples(0..10) == 33
  end
end
