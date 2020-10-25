defmodule ProjectEuler05 do
  @moduledoc """
  Documentation for `ProjectEuler05`.
  """

  @doc """
  Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  ## Examples

      iex> ProjectEuler05.smallest_divisor(10)
      2520

  """
  def smallest_divisor(range) do
    range
    |>is_divisible(1, range)
  end

  defp is_divisible(range, number, init) when rem(number, range) ==0 do
    is_divisible(range-1, number, init)
  end

  defp is_divisible(range, number, init) when rem(number, range) !=0 do
    is_divisible(init, number+1, init)
  end

  defp is_divisible(range, number, _init) when range == 0 do
    number
  end
end
