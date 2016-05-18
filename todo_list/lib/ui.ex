defmodule Ui do
    
    def start do
       
       #interaction(:menu)
        # menu = "a) add; d) delete; u) update; l) list, e) exit"
        
        # Promp.write menu
        # Promp.read 
        # |>
        Prompt.write( "What would you like to do?")
        get_user_option
        |> process_command
    end
    
    def get_user_option do
        input = Prompt.read |> String.strip
        case input do
            "a" -> :add
            "d" -> :delete
            "u" -> :update
            "c" -> :complete
        end
    end
    
    def process_command(:add) do
        task = Prompt.read
        {:add, task}
    end
    
    def process_command(:delete) do
        task = Prompt.read
        {:delete, task}
    end
    
    def process_command(:update) do
        task = Prompt.read
        {:update, task}
    end
    
     def process_command(:complete) do
        task = Prompt.read
        {:complete, task}
    end
end