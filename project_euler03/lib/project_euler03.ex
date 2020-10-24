defmodule ProjectEuler03 do
  @moduledoc """
  Documentation for `ProjectEuler03`.
  """

  @doc """
  Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?

  ## Examples

      iex> ProjectEuler03.largest_prime_factor(10)
      5

  """
  def largest_prime_factor(number) do
    number
    |>is_prime(2,[])
    |>Enum.max()
  end

  defp is_prime(number, divider, list) when divider > number do
    list
  end

  defp is_prime(number, divider, list) when rem(number, divider) ==0 do
    is_prime(div(number,divider), divider, [divider | list])
  end
  defp is_prime(number, divider, list) when rem(number, divider) !=0 do
    is_prime(number,divider+1,list)
  end

end
