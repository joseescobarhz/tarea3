#Solution File

class Node

    attr_accessor :value, :next_node

    def initialize val,next_in_line
        @value = val
        @next_nodex = next_in_line
    end
end

class LinkedList

    def initialize val
        @head = Node.new(val,nil)
    end
    
    def add(n)

        value = gets.chomp 
 		while value != -1
       		current = @head
       		
            while current.next_node != nil
       	    	current = current.next_node
       		end 
       		
            current.next_node = Node.new(value,nil)
        	self     
        	value = gets.chomp
        	
            if value.to_i == -1
                value = value.to_i
            end
        end
    end

    
    def display

        current = @head
        lista = []

        while current.next_node != nil 
            lista += [current.value]
            current = current.next_node
        end

        lista += [current.value]
        puts lista.join(", ")
    end

end

n = gets.chomp
if n.to_i != -1
ll = LinkedList.new(n)
ll.add(n)
ll.display
end
	
