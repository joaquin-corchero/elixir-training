defmodule Prompt do
    
    def read do
        IO.gets(">")        
    end
    
    def write(output) do
        IO.puts(output)
    end   
    
end