defmodule UiTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  

  # test "start should prompt the menu" do
  #   capture_io(fn ->
  #     output = Ui.start
  #     assert output == "What would you like to do?"
  #   end)
  # end
  
  test "user chooses to add a task" do
    capture_io("a\nTask Name", fn ->
      output = Ui.start
      assert output == {:add, "Task Name"}
    end)
  end
  
  test "user chooses to delete a task" do
    capture_io("d\nTask Name", fn ->
      output = Ui.start
      assert output == {:delete, "Task Name"}
    end)
  end
  
  test "user chooses to update a task" do
    capture_io("u\nTask Name", fn ->
      output = Ui.start
      assert output == {:update, "Task Name"}
    end)
  end
  
  test "user chooses to complete a task" do
    capture_io("c\nTask Name", fn ->
      output = Ui.start
      assert output == {:complete, "Task Name"}
    end)
  end
  
end