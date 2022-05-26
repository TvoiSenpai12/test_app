defmodule TestApp.Group do
  def group(mass) do
    int = []
    str = []
    flo = []
    arr = %{}

    new_arr =
    for n <- mass, do:
    if is_integer(n), do: 
      Map.put(arr, :integer, [n | int]), 
    else: 
      if is_bitstring(n), do: 
        Map.put(arr, :string, [n | str]), 
      else: Map.put(arr, :float, [n | flo])
    
      new_arr
  end
end

# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])