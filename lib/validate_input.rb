def validateInput(input)
    case input
    when "S"
        true
    when "C"
        true
    when input.starts_with?("I", "L", "V", "H")
    else
        puts "You entered an invalid command. Commands start with 'I', 'C', 'L', 'V', 'H' or 'S'"
        false
    end
    
    case input 
    when /I \d \d/
        true
    end
end