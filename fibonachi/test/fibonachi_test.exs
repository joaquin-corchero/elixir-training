defmodule FibonachiTest do
  use ExUnit.Case
  doctest Fibonachi

  test "return the first Fibonachi number" do
    assert Fibonachi.get(1) == 1
  end

  test "return the second" do
    assert Fibonachi.get(2) == 1
  end

  test "return the 10th" do
    assert Fibonachi.get(10) == 55
  end
end
