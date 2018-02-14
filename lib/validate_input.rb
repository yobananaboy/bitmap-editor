require './lib/validators/validate_I'
require './lib/validators/validate_L'
require './lib/validators/validate_V_H'

def validateInput(input, width = 0, height = 0)
    case input
    when "S"
        if width <= 0 || height <= 0
            {
                "input_error" => "Cannot show bitmap. Please create a bitmap before using 'S' command."
            }
        else
            {
                "input_type" => "S"
            }
        end
    when "C"
        {
            "input_type" => "C"
        }
    when /^(I) (\d+) (\d+)$/
        validateI(input)
        
    when /^(L) (\d+) (\d+) ([A-Z])$/
        validateL(input, width, height)
        
    when /^([VH]) (\d+) (\d+) (\d+) ([A-Z])$/
        validateVH(input, width, height)
    else
        {
            "input_error" => "Invalid input provided."
        }
    end
    
end