defmodule CacheTest do
  use ExUnit.Case

  test "starts empty" do
    {:ok, cache} = Cache.init(:fibonachiCacheTest)

    assert Cache.all(cache) == %{}
  end

  test "can store something" do
    {:ok, cache} = Cache.init(:fibonachiCacheTest)

    Cache.save(cache, :name, "the value")

    assert Cache.all(cache) == %{name: "the value"}
  end

  test "can get an item" do
    {:ok, cache} = Cache.init(:fibonachiCacheTest)

    Cache.save(cache, :name, "the value")

    value = Cache.get(cache, :name)

    assert value == "the value"
  end

  test "item does not exist" do
    {:ok, cache} = Cache.init(:fibonachiCacheTest)

    value = Cache.get(cache, :name)

    assert value == nil
  end

end
