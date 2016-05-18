defmodule TodoList do
    
    def add_task(task, list) do
        Map.put(list, task, :new)
    end
        
     def complete_task(task, list) do
         Map.update!(list, task, fn(x) -> :complete end)
    end
    
    def remove_task(task, list) do
        Map.delete(list, task)
    end
    
    def edit_task(new_task, task, list) do
        current_state = Map.fetch!(list, task)
        list = remove_task(task, list)
        Map.put(list, new_task, current_state)
    end
    
end