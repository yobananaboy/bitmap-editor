def validateInput(string)
    case string
    when "S"
        true
    when "C"
        true
    when /I \d \d/
        true
    end
end