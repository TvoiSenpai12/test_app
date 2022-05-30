defmodule TestApp.Fiba do
    def find(param) do
      list = [1, 1]
      do_fib(list, param) -- do_minus(list, param)
    end
  
    defp do_fib(list, 2) do
      Enum.reverse(list)
    end

  defp do_minus(list, n) do
    a = do_fib([hd(list) + hd(tl(list))] ++ list, n - 1)
    temp = Enum.map(a, fn(x) ->  if x > n do x end end)
    minus = Enum.reject(temp, &is_nil/1)
  end
  
    defp do_fib(list, n) do
    do_fib([hd(list) + hd(tl(list))] ++ list, n - 1)
    end
end

# TestApp.Fiba.find(9)