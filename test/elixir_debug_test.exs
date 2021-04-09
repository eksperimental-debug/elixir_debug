defmodule ElixirDebugTest do
  use ExUnit.Case
  doctest ElixirDebug

  test "greets the world" do
    assert ElixirDebug.hello() == :world
  end
end
