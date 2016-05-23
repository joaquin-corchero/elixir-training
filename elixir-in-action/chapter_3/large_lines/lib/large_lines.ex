defmodule LargeLines do
  def get_long_lines(fileLocation) do
    File.stream!(fileLocation)
    |> Stream.map(fn(x) -> String.replace(x, "\n", "")  end)#returns an enum after executing the function
    |> Enum.filter(fn(x) -> String.length(x) > 80 end) #filters the enum and gets the items that match the condition of the function
  end

  def get_line_length(fileLocation) do
    File.stream!(fileLocation)
    |> Stream.map(fn(x) -> String.replace(x, "\n", "")  end)
    |> Enum.map(fn(x) -> String.length(x)  end)
  end

  def get_longest_line(fileLocation) do
    File.stream!(fileLocation)
    |> Stream.map(fn(content) -> String.replace(content, "\n", "") end)
    |> Enum.max_by(fn(x) -> String.length(x) end)
  end

  def get_words_per_line(fileLocation) do
  end
end
