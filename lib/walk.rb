class Walk
    attr_reader :array
    def initialize(array = nil)
        @array = array 
    end 
    
    def create_array
        arr = []
        10.times do 
            arr << ['n', 's', 'e', 'w'].sample
        end
        @array = arr
    end 

    def return_position(array)
        x = 5
        y = 5
        array.each do |l|
            if l == "n" then x += 1
            elsif l == "s" then x -= 1
            elsif l == "e" then y += 1
            elsif l == "w" then y -= 1
            end
        end
         x == 5 && y == 5
    end
end 