def checkBitmapCreated(width, height)
    # Unless width or height is 0, bitmap must have been created, so return true. Else return false.
    unless width == 0 || height == 0
        true
    else
        false
    end
end