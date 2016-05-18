defmodule CacheTest do
  use ExUnit.Case

  test "starts empty" do
    {:ok, cache} = Cache.init

    assert Cache.all(cache) == %{}
  end

  test "can store something" do
    {:ok, cache} = Cache.init

    Cache.save(cache, :name, "the value")

    assert Cache.all(cache) == %{name: "the value"}
  end

  test "can get an item" do
    {:ok, cache} = Cache.init

    Cache.save(cache, :name, "the value")

    value = Cache.get(cache, :name)

    assert value == "the value"
  end

end
