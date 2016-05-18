defmodule Cache do

  def init do
    Agent.start_link(fn -> %{} end)
  end

  def all(cache) do
    Agent.get(
      cache,
      fn(state) -> state end
    )
  end

  def save(cache, key, value) do
    Agent.update(
      cache,
      fn(state) -> Map.put(state, key, value) end
    )
  end

  def get(cache, key) do
    Agent.get(
      cache,
      fn(state) -> Map.get(state, key) end
    )
  end
end
