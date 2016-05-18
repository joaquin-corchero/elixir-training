defmodule RomanNumberalsTest do
  use ExUnit.Case
  doctest RomanNumberals

  test "1 converts to I" do
    assert RomanNumberals.convert(1) == "I"
  end

  test "2 converts to II" do
    assert RomanNumberals.convert(2) == "II"
  end

  test "3 converts to III" do
    assert RomanNumberals.convert(3) == "III"
  end

  test "4 converts to IV" do
    assert RomanNumberals.convert(4) == "IV"
  end

  test "5 converts to V" do
    assert RomanNumberals.convert(5) == "V"
  end

  test "6 converts to VI" do
    assert RomanNumberals.convert(6) == "VI"
  end

  test "9 converts to IX" do
    assert RomanNumberals.convert(9) == "IX"
  end

  test "10 converts to X" do
    assert RomanNumberals.convert(10) == "X"
  end

  test "11 converts to XI" do
   assert RomanNumberals.convert(11) == "XI"
  end

  test "12 converts to XII" do
   assert RomanNumberals.convert(12) == "XII"
  end

  test "13 converts to XIII" do
   assert RomanNumberals.convert(13) == "XIII"
  end

  test "14 converts to XIV" do
   assert RomanNumberals.convert(14) == "XIV"
  end

  test "15 converts to XV" do
   assert RomanNumberals.convert(15) == "XV"
  end

  test "20 converts to XX" do
    assert RomanNumberals.convert(20) == "XX"
  end

  test "33 converts to XXXIII" do
    assert RomanNumberals.convert(33) == "XXXIII"
  end
end
