require './lib/validators/check_bitmap_created'

def validateL(input, width, height)
    
    # Check if bitmap grid has been created
    # Error if no bitmap grid
    
    bitmap_grid = checkBitmapCreated(width, height)
    
    if bitmap_grid
    
        # Match string with regex, then captures to return array of captures
        
        input_type, input_x_coordinate, input_y_coordinate, input_colour = input.match(/^(L) (\d+) (\d+) ([A-Z])$/).captures
        
        # Convert x and y coordinates to integers
        
        input_x_coordinate = input_x_coordinate.to_i
        input_y_coordinate = input_y_coordinate.to_i
        
        # Check x and y coordinates are in bitmap area. Error if not
        
        if input_x_coordinate < 1 || input_x_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
            return {
                "input_error" => "You have tried to colour a pixel that is outside of the bitmap's area."
            }
        end
        
        # Return input type, x and y coordinates, and input colour
        
        {
            "input_type" => input_type,
            "input_x_coordinate" => input_x_coordinate,
            "input_y_coordinate" => input_y_coordinate,
            "input_colour" => input_colour
        }
        
    else
        
        {
            "input_error" => "You have tried to add colour before bitmap is created."
        }
        
    end
end