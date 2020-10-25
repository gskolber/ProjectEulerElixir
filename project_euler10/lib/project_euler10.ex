defmodule ProjectEuler10 do
  @moduledoc """
  Documentation for `ProjectEuler10`.
  """

  @doc """
  Summation of primes

  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.

  ## Examples

      iex> ProjectEuler10.sum_of_primes(10)
      17

  """
  def sum_of_primes(range) do
    range
    |> number_is_prime?(0, 2)

  end

  defp number_is_prime?(range, list, acc) when acc==range do
    list
  end


  defp number_is_prime?(range, list, acc) when acc<=range do

    case is_prime(acc, 2) do
      true ->
        number_is_prime?(range, list+acc, acc+1)
      false ->
        number_is_prime?(range, list, acc+1)

      end
  end

  defp is_prime(number, acc) when number > acc do
    case rem(number, acc) == 0 do
      true -> false
      false -> is_prime(number, acc+1)
    end
  end

  defp is_prime(number, acc) when number == acc do
    true
  end

end
