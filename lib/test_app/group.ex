defmodule TestApp.Group do
  def group(mass) do
    arr = %{string: [], integer: [], float: []}
    
    Enum.reduce(mass, fn(n, acc) ->
      IO.inspect(acc) 
      case n do
        n when is_binary(n) -> Map.put(arr, :string, [acc | n])
        n when is_integer(n) -> Map.put(arr, :integer, [acc | n])
        n when is_float(n) -> Map.put(arr, :float, [acc | n])
      end
    end)
    |> IO.inspect
  end
end
# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])