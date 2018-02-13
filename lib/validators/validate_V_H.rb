def validateVH(input, width, height)
        
        input_type, input_first_coordinate, input_second_coordinate, input_third_coordinate, input_colour = input.match(/^([VH]) (\d+) (\d+) (\d+) ([A-Z])$/).captures
        
        if input_type == 'V'
            
            input_x_coordinate = input_first_coordinate.to_i
            input_y1_coordinate = input_second_coordinate.to_i
            input_y2_coordinate = input_third_coordinate.to_i
            
            if input_x_coordinate < 1 || input_x_coordinate > width || input_y1_coordinate < 1 || input_y2_coordinate < 1 || input_y1_coordinate > height || input_y2_coordinate > height
                return {
                    "input_error" => "You have tried to colour a pixel that is outside of the bitmap's area."
                }
            end
            
            input_coordinates = [input_y1_coordinate, input_y2_coordinate].sort!
            
            {
                "input_type" => input_type,
                "input_x_coordinate" => input_x_coordinate,
                "input_y_coordinate" => input_coordinates,
                "input_colour" => input_colour
            }
            
        else
            input_x1_coordinate = input_first_coordinate.to_i
            input_x2_coordinate = input_second_coordinate.to_i
            input_y_coordinate = input_third_coordinate.to_i
            
            if input_x1_coordinate < 1 || input_x1_coordinate > width || input_x2_coordinate < 1 || input_x2_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
                return {
                    "input_error" => "You have tried to colour a pixel that is outside of the bitmap's area."
                }
            end
            
            input_coordinates = [input_x1_coordinate, input_x2_coordinate].sort!
            
            {
                "input_type" => input_type,
                "input_x_coordinate" => input_coordinates,
                "input_y_coordinate" => input_y_coordinate,
                "input_colour" => input_colour
            }
            
        end
end