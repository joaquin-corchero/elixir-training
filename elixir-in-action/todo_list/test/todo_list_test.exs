defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  test "Can create a new todo list" do
    assert TodoList.new() == %{}
  end

  test "Can add a new item to an empty todo list" do
    expected = %{{2016, 5, 15} => "First item"}
    actual = TodoList.new |>
      TodoList.add({2016, 05, 15}, "First item")

    assert actual == expected
  end

  test "Can add a new item to a populated todo list" do
    expected = %{{2016, 5, 15} => "First item", {2016, 5, 16} => "Second item"}
    actual = TodoList.new |>
      TodoList.add({2016, 05, 15}, "First item") |>
      TodoList.add({2016, 05, 16}, "Second item")

    assert actual == expected
  end
end
