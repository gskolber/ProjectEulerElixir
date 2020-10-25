defmodule ProjectEuler09 do
  @moduledoc """
  Documentation for `ProjectEuler09`.
  """

  @doc """
  Special Pythagorean triplet

  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

                                  a^2 + b^2 = c^2
  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.

  ## Examples

      iex> ProjectEuler09.product_pythagorean_triple(1000)
      31875000

  """
  def product_pythagorean_triple(range) do
    range
    |>pythagorean_triple_a(1,1,0)
    |>Enum.reduce(fn x, acc -> x * acc end)
  end

  defp pythagorean_triple_a(range, a, b, c) when a<div(range,3) do
    pythagorean_triple_b(range, a, b, c)

  end

  defp pythagorean_triple_a(range, a, b, c) when a==div(range,3) do
    [a,b,c]

  end

  defp pythagorean_triple_b(range, a, b, c) when b<div(range,2)  do
    c = range-a-b

    case a*a + b*b == c*c do
      true -> [a,b,c]
      false -> pythagorean_triple_b(range, a, b+1, c)
    end

  end

  defp pythagorean_triple_b(range, a, b, c) when b==div(range,2)  do
    pythagorean_triple_b(range, a+1, b=1, c)
  end

end

created function and tests for exercise 09
