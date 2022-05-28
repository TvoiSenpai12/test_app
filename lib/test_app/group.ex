defmodule TestApp.Group do
  def group(mass) do
    arr = %{string: [], integer: [], float: []}

    Enum.reduce(mass, arr, fn(n, acc) ->
      case n do
        n when is_binary(n) -> Map.put(acc, :string, [n | acc.string])
        n when is_integer(n) -> Map.put(acc, :integer, [n | acc.integer])
        n when is_float(n) -> Map.put(acc, :float, [n | acc.float])
      end
    end)
    |> IO.inspect
  end
end
# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])
