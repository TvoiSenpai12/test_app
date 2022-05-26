defmodule TestApp.Fiba do
  def find(param) do
    list = [1, 1]
    fib(list, param)
  end

  def fib(list, 2) do
    Enum.reverse(list)
    # list
  end

  def fib(list, n) do
    IO.puts(n)
    if [hd(list) + hd(tl(list))] < n, do: fib([hd(list) + hd(tl(list))] ++ list, n - 1), else: list ++ [list, n - 1]
  end
end

# TestApp.Fiba.find(9)
