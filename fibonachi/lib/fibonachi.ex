defmodule Fibonachi do

  def get(0) do 0 end
  def get(1) do 1 end
  def get(n) do get(n-1) + get(n-2) end
end
