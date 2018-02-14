require './lib/validators/check_bitmap_created'

def validateS(width, height)
    
        # check if bitmap has already been created by checking its width and height
    
        bitmap_created = checkBitmapCreated(width, height)
        
        # if bitmap has been created, return input type 'S', else return input error
        
        if bitmap_created
            {
                "input_type" => "S"
            }            
        else
            {
                "input_error" => "Cannot show bitmap. Please create a bitmap before using 'S' command."
            }            
        end
        
end