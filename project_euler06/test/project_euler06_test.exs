defmodule ProjectEuler06Test do
  use ExUnit.Case
  doctest ProjectEuler06

  test "difference between sum of squares" do
    assert ProjectEuler06.sum_square_difference(10) == 2640
    assert ProjectEuler06.sum_square_difference(100) == 25164150
  end

  test "sum of the squares" do
    assert ProjectEuler06.sum_of_squares(10, 0) == 385
  end

  test "square of the sum" do
    assert ProjectEuler06.square_of_sum(10) == 3025
  end

end
