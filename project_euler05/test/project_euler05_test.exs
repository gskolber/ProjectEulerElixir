defmodule ProjectEuler05Test do
  use ExUnit.Case
  doctest ProjectEuler05

  test "smallest divisor" do
    assert ProjectEuler05.smallest_divisor(10) == 2520
    assert ProjectEuler05.smallest_divisor(20) == 232792560
  end
end
