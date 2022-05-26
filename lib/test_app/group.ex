defmodule TestApp.Group do
  def group(mass) do
    arr = %{:string => [], :integer => [], :float => []}
    
    Enum.reduce(mass, acc, fn(n, acc) ->
      IO.inspect(arr) 
      case n do
        n when is_binary(n) -> Map.put(acc, :string, acc.string)
        n when is_integer(n) -> Map.put(acc, :integer, acc.integer)
        n when is_float(n) -> Map.put(acc, :float, acc.float) 
      end
    end)
    |> IO.inspect(arr)
  end
end
# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])