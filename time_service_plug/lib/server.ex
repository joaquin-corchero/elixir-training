defmodule TimeServicePlug.Server do
  def init(_opts) do

  end

  def start_link do
    {:ok, _} = Plug.Adapters.Cowboy.http(TimeServicePlug.Router, [])
  end
end
