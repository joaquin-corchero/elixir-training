defmodule StartCache do
  use Application

  def start(_,_) do
    Cache.init(:fibonachiCache)
  end
end
