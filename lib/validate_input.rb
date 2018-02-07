def validateInput(input, width = 0, height = 0)
    case input
    when "S" then true
    when "C" then true
    when /^(I) (\d+) (\d+)$/
        
        if width > 0 || height > 0
            puts "You have already initiated a bitmap."
            return false
        end
        
        input_type, input_width, input_height = input.match(/^(I) (\d+) (\d+)$/).captures
        
        input_width = input_width.to_i
        input_height = input_height.to_i
       
        if input_width < 1 || input_width > 250 || input_height < 1 || input_height > 250
            puts "You've entered an incorrect width or height for the bitmap. Please enter a range between 1 and 250."
            return false
        end
        
        true
        
    when /^(L) (\d+) (\d+) ([A-Z])$/
        input_type, input_x_coordinate, input_y_coordinate, input_colour = input.match(/^(L) (\d+) (\d+) ([A-Z])$/).captures
        
        input_x_coordinate = input_x_coordinate.to_i
        input_y_coordinate = input_y_coordinate.to_i
        
        if input_x_coordinate < 1 || input_x_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
            puts "You have tried to colour a pixel that is outside of the bitmap's area."
            return false
        end
        
        true
    when /^([V]) (\d+) (\d+) (\d+) ([A-Z])$/
        input_type, input_x_coordinate, input_y1_coordinate, input_y2_coordinate, input_colour = input.match(/^([V]) (\d+) (\d+) (\d+) ([A-Z])$/).captures
        
        input_x_coordinate = input_x_coordinate.to_i
        input_y1_coordinate = input_y1_coordinate.to_i
        input_y2_coordinate = input_y2_coordinate.to_i
        
        if input_x_coordinate < 1 || input_x_coordinate > width || input_y1_coordinate < 1 || input_y2_coordinate < 1 || input_y1_coordinate > height || input_y2_coordinate > height
            puts "You have tried to colour a pixel that is outside of the bitmap's area."
            return false
        end
        
        true

    when /^([H]) (\d+) (\d+) (\d+) ([A-Z])$/
        input_type, input_x1_coordinate, input_x2_coordinate, input_y_coordinate, input_colour = input.match(/^([H]) (\d+) (\d+) (\d+) ([A-Z])$/).captures
        
        input_x1_coordinate = input_x1_coordinate.to_i
        input_x2_coordinate = input_x2_coordinate.to_i
        input_y_coordinate = input_y_coordinate.to_i
        
        if input_x1_coordinate < 1 || input_x1_coordinate > width || input_x2_coordinate < 1 || input_x2_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
            puts "You have tried to colour a pixel that is outside of the bitmap's area."
            return false
        end
        
        true
        
    end
    
end