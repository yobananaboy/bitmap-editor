def validateText(string)
    case string
    when "S"
        true
    when /I \d \d/
        true
    end
end