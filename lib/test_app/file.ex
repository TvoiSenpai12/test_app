defmodule TestApp.File do
    def file do
        Path.expand('/Users/alexandersobolev/Downloads/example.csv') 
        |> Path.absname 
        |> File.read
        |> Enum.to_list
    end
end

# TestApp.File.file