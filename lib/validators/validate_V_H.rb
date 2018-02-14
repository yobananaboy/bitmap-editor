require './lib/validators/check_bitmap_created'

def validateVH(input, width, height)
        
        # Check if bitmap grid has been created
        # Error if no bitmap grid
        
        bitmap_grid = checkBitmapCreated(width, height)
        
        if bitmap_grid
        
            # Match string with regex, then captures to return array of captures
        
            input_type, input_first_coordinate, input_second_coordinate, input_third_coordinate, input_colour = input.match(/^([VH]) (\d+) (\d+) (\d+) ([A-Z])$/).captures
            
            # If input type is v, must be drawing a vertical line
            
            if input_type == 'V'
                
                # First coordinate is x and second and third are y coordinates
                
                input_x_coordinate = input_first_coordinate.to_i
                input_y1_coordinate = input_second_coordinate.to_i
                input_y2_coordinate = input_third_coordinate.to_i
                
                # Check x and y coordinates are in bitmap area. Error if not
                
                if input_x_coordinate < 1 || input_x_coordinate > width || input_y1_coordinate < 1 || input_y1_coordinate > height || input_y2_coordinate < 1 || input_y2_coordinate > height
                    return {
                        "input_error" => "You have tried to colour a pixel that is outside of the bitmap's area."
                    }
                end
                
                # sort the two y coordinates into an array - smallest to largest
                
                input_coordinates = [input_y1_coordinate, input_y2_coordinate].sort
                
                # Return input type, x and y coordinates, and input colour
                
                {
                    "input_type" => input_type,
                    "input_x_coordinate" => input_x_coordinate,
                    "input_y_coordinate" => input_coordinates,
                    "input_colour" => input_colour
                }
                
            # Input type isn't V, therefore must be drawing horizontal line
                
            else
                
                # First two coordinates are x and third is y coordinate
                
                input_x1_coordinate = input_first_coordinate.to_i
                input_x2_coordinate = input_second_coordinate.to_i
                input_y_coordinate = input_third_coordinate.to_i
                
                # Check x and y coordinates are in bitmap area. Error if not
                
                if input_x1_coordinate < 1 || input_x1_coordinate > width || input_x2_coordinate < 1 || input_x2_coordinate > width || input_y_coordinate < 1 || input_y_coordinate > height
                    return {
                        "input_error" => "You have tried to colour a pixel that is outside of the bitmap's area."
                    }
                end
                
                # sort the two x coordinates into an array - smallest to largest
                
                input_coordinates = [input_x1_coordinate, input_x2_coordinate].sort
                
                # Return input type, x and y coordinates, and input colour
                
                {
                    "input_type" => input_type,
                    "input_x_coordinate" => input_coordinates,
                    "input_y_coordinate" => input_y_coordinate,
                    "input_colour" => input_colour
                }
                
            end
        
        else
            
            {
                "input_error" => "You have tried to add colour before bitmap is created."
            }
        
        end
end