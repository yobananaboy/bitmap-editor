def colourPixel(bitmap, x, y, colour)
    bitmap["#{x},#{y}"] = colour
    bitmap
end