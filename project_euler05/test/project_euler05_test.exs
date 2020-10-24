defmodule ProjectEuler05Test do
  use ExUnit.Case
  doctest ProjectEuler05

  test "smallest divisor" do
    assert ProjectEuler05.smallest_divisor(10) == 2520
  end
end
