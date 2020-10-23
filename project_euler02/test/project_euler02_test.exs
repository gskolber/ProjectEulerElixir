defmodule ProjectEuler02Test do
  use ExUnit.Case
  doctest ProjectEuler02

  test "Even Fibonacci Numbers" do
    assert ProjectEuler02.fibonacci(10) == 10
    assert ProjectEuler02.fibonacci(50) == 44
  end
end
