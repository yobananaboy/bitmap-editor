def validateI(input)

    # match string with regex, then captures to return array of captures
    
    input_type, input_width, input_height = input.match(/^(I) (\d+) (\d+)$/).captures
    
    # convert string width and height to integer
    
    input_width = input_width.to_i
    input_height = input_height.to_i
   
    # check if width and height provided is between 1 and 250, to make sure a valid bitmap area has been supplied
    # return an error if not, else return input type, width and height
   
    if input_width < 1 || input_width > 250 || input_height < 1 || input_height > 250
        return {
            "input_error" => "You have entered an incorrect width or height for the bitmap. Please enter a range between 1 and 250."
        }
    end
    {
        "input_type" => input_type,
        "input_width" => input_width,
        "input_height" => input_height
    }

end