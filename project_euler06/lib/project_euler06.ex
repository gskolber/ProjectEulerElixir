defmodule ProjectEuler06 do
  @moduledoc """
  Documentation for `ProjectEuler06`.
  """

  @doc """
  Sum square difference

  The sum of the squares of the first ten natural numbers is,

  1^2+2^2...10^2 = 385

  The square of the sum of the first ten natural numbers is,

  (1+2..+10)^2 = 55^2 = 3025

  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

  ## Examples

      iex> ProjectEuler06.sum_square_difference(10)
      2640.0

  """
  @spec sum_square_difference(integer) :: integer
  def sum_square_difference(range) do
    range
    |> sum_of_squares(0)
    |> difference_between_squares(square_of_sum(range))

  end

  def sum_of_squares(number, total) when number>0 do

    total = total + :math.pow(number,2)
    sum_of_squares(number-1, total)

  end

  def sum_of_squares(number, total) when number==0 do
    total
  end

  def square_of_sum(number) do
    Enum.sum(1..number)
    |> :math.pow(2)
  end

  @spec difference_between_squares(integer, integer) :: integer
  def difference_between_squares(sum_square, square_sum) do
    square_sum - sum_square
  end
end
