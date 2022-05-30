defmodule TestApp.File do
    def file do
        route = "./example.csv"
        base = CSVLixir.read(route)
        base_list = List.delete(Enum.to_list(base), ["Name", "Surname", "Age"])

        IO.puts("Самый молодоый пользователь = #{do_young(base_list)}")
        IO.puts("Самый взрослый пользователь = #{do_old(base_list)}")
    end

    # ---Очищает результат от nill---
    defp do_young(list) do
        Enum.reject(do_young_dirty(list), &is_nil/1)
    end

    defp do_old(list) do
        Enum.reject(do_old_dirty(list), &is_nil/1)
    end
    # ------

    # ---Выводит самого взрослого и молодого пользователя---
    defp do_young_dirty(list) do
        Enum.map(list, fn(x) ->
            young = []
            min = do_min(list)

            if Enum.member?(x, min) do young ++ x end
        end)
    end

    defp do_old_dirty(list) do
        Enum.map(list, fn(x) ->
            old = []
            max = do_max(list)

            if Enum.member?(x, max) do old ++ x end
        end)
    end
    # ------

    # ----Выводит максимальный и минимальный возраст из всех пользоватлей---
    defp do_max(par) do
        Enum.map(par, fn(x) -> 
            do_perevod(x)
        end)
        |> Enum.max
        |> to_string
    end

    defp do_min(par) do
        Enum.map(par, fn(x) -> 
            do_perevod(x)
        end)
        |> Enum.min
        |> to_string
    end
    # -------

    # ---Добавляет возраст всех пользователей в массив---
    defp do_perevod(par) do
        temp = []

        a = List.last(par)
        b = String.to_integer(a)
        temp ++ b
    end
    # ------
end

# TestApp.File.file