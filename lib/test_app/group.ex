defmodule TestApp.Group do
  def group(mass) do
    arr = %{:string => [], :integer => [], :float => []}
    
    Enum.reduce(mass, fn n, acc ->
      IO.inspect(arr) 
      case n do
        n when is_binary(n) -> Map.put(arr, :string, [n | acc])
        n when is_integer(n) -> Map.put(arr, :integer, [n | acc])
        n when is_float(n) -> Map.put(arr, :float, [n | acc]) 
      end
    end)
    |> IO.inspect(arr)
  end
end
# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])