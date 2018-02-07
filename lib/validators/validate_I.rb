def validateI(input, width, height)
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
end