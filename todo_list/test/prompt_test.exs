defmodule PromptTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Prompt
   
  test "read the input from the console" do
     capture_io("the input", fn ->
      input = Prompt.read
      assert input == "the input"
    end)
  end
  
  test "shows the text to the console" do
    message = "the output"
    value = capture_io(message, fn ->
      Prompt.write(message)
    end)
    
    assert message == String.strip(value)
  end
end