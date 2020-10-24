defmodule ProjectEuler04Test do
  use ExUnit.Case
  doctest ProjectEuler04

  test "greets the world" do
    assert ProjectEuler04.palindrome(99) == 9009
  end
end
