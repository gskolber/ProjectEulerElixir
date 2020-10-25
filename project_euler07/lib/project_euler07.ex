defmodule ProjectEuler07 do
  @moduledoc """
  Documentation for `ProjectEuler07`.
  """

  @doc """
  10001st prime

  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?


  ## Examples

      iex> ProjectEuler07.prime_number_at_position(2,4)
      7

  """
  def prime_number_at_position(number,position) when position == 0 do
    number - 1
  end

  def prime_number_at_position(number, position) when position>=0 do

    case is_prime?(number, 2) do
      true ->
        prime_number_at_position(number+1, position-1)
      false ->
        prime_number_at_position(number+1, position)

    end

  end

  def is_prime?(number, cont) when number > cont do
    case rem(number, cont) == 0 do
      true -> false
      false -> is_prime?(number, cont+1)
    end
  end

  def is_prime?(number, cont) when number == cont do
    true
  end

end
