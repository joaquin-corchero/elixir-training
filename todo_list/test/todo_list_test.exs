defmodule TodoListTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest TodoList
  
  test "add first todo task to the list" do
    assert TodoList.add_task("first task", %{}) == %{"first task" => :new}
  end
  
  test "add second task to the list" do
    assert TodoList.add_task("second task", %{"first task" => :new}) == %{"first task" => :new, "second task" => :new}
  end
  
   test "can set a task as complete" do
     assert TodoList.complete_task("first task", %{"first task" => :new, "second task" => :new}) == %{"first task" => :complete, "second task" => :new}
   end
  
  test "a task can be deleted" do
     assert TodoList.remove_task("first task", %{"first task" => :new, "second task" => :new}) == %{"second task" => :new}
  end
  
  test "a task can be edited" do
    assert TodoList.edit_task("new first task", "first task",  %{"first task" => :new, "second task" => :new}) == %{"new first task" => :new, "second task" => :new}
  end
  
end