defmodule TodoList do
  def new do
    Map.new
  end

  def add(todo_list, date, value) do
    Map.put(todo_list, date, value)
  end
end
