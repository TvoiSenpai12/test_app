defmodule TestApp.Group do
  def group(mass) do
    arr = %{}

    for n <- mass, do:
    if is_integer(n), do: 
      Map.put_new(arr, :integer, n), 
    else: 
      if is_bitstring(n), do: 
        Map.put_new(arr, :string, n), 
      else: Map.put_new(arr, :float, n)

  end
end

# TestApp.Group.group([1,2,"foo", 2.5, "bar", 6.3])