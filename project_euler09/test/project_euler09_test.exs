defmodule ProjectEuler09Test do
  use ExUnit.Case
  doctest ProjectEuler09

  test "Product of Pythagorean triple" do
    assert ProjectEuler09.product_pythagorean_triple(1000) == 31875000
  end
end
