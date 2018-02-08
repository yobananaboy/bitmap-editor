def validateL(input, width, height)
    input_type, input_x_coordinate, input_y_coordinate, input_colour = input.match(/^(L) (\d+) (\d+) ([A-Z])$/).captures
    
    input_x_coordinate = input_x_coordinate.to_i
    input_y_coordinate = input_y_coordinate.to_i
    
    if input_x_coordinate < 1 || input_x_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
        puts "You have tried to colour a pixel that is outside of the bitmap's area."
        return false
    end
    
    {
        "input_type" => input_type,
        "input_x_coordinate" => input_x_coordinate,
        "input_y_coordinate" => input_y_coordinate,
        "input_colour" => input_colour
    }
end