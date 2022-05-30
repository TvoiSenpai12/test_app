defmodule TestApp.File do
    def file do
        route = "./example.csv"
        base = CSVLixir.read(route)
        base_list = List.delete(Enum.to_list(base), ["Name", "Surname", "Age"])

        Enum.reduce(base_list, base_list, fn(x, acc) ->
            Enum.group_by(acc)
        end)
    end
end

# route = "./example.csv"
# TestApp.File.file
