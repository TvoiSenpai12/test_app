defmodule TestApp.Fiba do
  def find(param) do
    list = [1, 1]
    fib(list, param)
    # a = fib(list, param)
  end

  def fib(list, 2) do
    Enum.reverse(list)
    # list
  end

  def fib(list, n) do
    # IO.puts(n)
    fib([hd(list) + hd(tl(list))] ++ list, n - 1)
    # for i <- a, do: if i > n, do: Process.exit(self, :normal)
    # IO.inspect a, label: "List"
    # if [hd(list) + hd(tl(list))] > n, do: fib([hd(list) + hd(tl(list))] ++ list, n - 1), else: list ++ [n]
  end
end

# a = TestApp.Fiba.find(n)

# TestApp.Fiba.find(9)
