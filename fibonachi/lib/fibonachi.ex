defmodule Fibonachi do

  def get(0) do 0 end
  def get(1) do 1 end
  def get(n) do
    cachedValue = Cache.get(:fibonachiCache, n)
    cond do
      cachedValue == nil ->
        value = get(n-1) + get(n-2)
        Cache.save(:fibonachiCache, n , value)
        value
      :else ->
        cachedValue
    end
  end
end
