defmodule ProjectEuler04 do
  @moduledoc """
  Documentation for `ProjectEuler04`.
  """

  @doc """
  Largest palindrome product

  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.

  ## Examples

      iex> ProjectEuler04.palindrome(99)
      9009

  """
  def palindrome(range) do
    range
    |> product(range)
  end

  defp product(x, y) do
    result = x * y
    case to_string(result) == is_palindrome(result) do
      true -> result
      false -> product(x, y-1)
    end

  end

  defp is_palindrome(number) do

    String.reverse(to_string(number))

  end



end
