require('validators/validate_I')
require('validators/validate_L')
require('validators/validate_V_H')

def validateInput(input, width = 0, height = 0)
    case input
    when "S"
        if width <= 0 || height <= 0
            false
        else
            true
        end
    when "C" then true
    when /^(I) (\d+) (\d+)$/
        validateI(input, width, height)
        
    when /^(L) (\d+) (\d+) ([A-Z])$/
        validateL(input, width, height)
        
    when /^([VH]) (\d+) (\d+) (\d+) ([A-Z])$/
        validateVH(input, width, height)
    else
        puts "Please enter a valid input."
        false
    end
    
end