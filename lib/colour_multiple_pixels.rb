def colourMultiplePixels(bitmap, x, y, colour)
    if x.is_a? Array
        for i in x[0]..x[1]
            bitmap["#{i},#{y}"] = colour
        end
    else
        for i in y[0]..y[1]
            bitmap["#{x},#{i}"] = colour
        end
    end
    bitmap
end