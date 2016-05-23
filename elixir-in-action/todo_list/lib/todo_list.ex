defmodule TodoList do
  def new do
    Map.new
  end

  def add(todo_list, date, value) do
    Map.udpate!(todo_list, date, fn(old_value) -> [old_value | value] end)
  end

  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end
end
