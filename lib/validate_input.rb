def validateInput(input, width = 0, height = 0)
    case input
    when "S" then true
    when "C" then true
    when /(I) (\d+) (\d+)$/
        if width > 0 || height > 0
            puts "You have already initiated a bitmap."
            return false
        end
        input, input_width, input_height = input.match(/(I) (\d+) (\d+)$/).captures
        input_width = input_width.to_i
        input_height = input_height.to_i
        if input_width < 1 || input_width > 250 || input_height < 1 || input_height > 250
            puts "You've entered an incorrect width or height for the bitmap. Please enter a range between 1 and 250."
            return false
        end
        true
    when /(L) (\d+) (\d+) ([A-Z])$/
        input, input_x_coordinate, input_y_coordinate, input_colour = input.match(/(L) (\d+) (\d+) ([A-Z])$/).captures
        input_x_coordinate = input_x_coordinate.to_i
        input_y_coordinate = input_y_coordinate.to_i
        if input_x_coordinate > width || input_y_coordinate > height
            puts "You have tried to colour a pixel that is outside of the bitmap's area."
            return false
        end
        true
    end
    
end