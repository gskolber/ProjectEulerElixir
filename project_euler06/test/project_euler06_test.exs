defmodule ProjectEuler06Test do
  use ExUnit.Case
  doctest ProjectEuler06

  test "difference between sum of squares" do
    assert ProjectEuler06.difference_between_squares(10) == 2640
  end

  test "sum of the squares" do
    assert ProjectEuler06.sum_of_squares(10) == 385
  end

  test "square of the sum" do
    assert ProjectEuler06.square_of_sum(10) == 3025
  end

end
