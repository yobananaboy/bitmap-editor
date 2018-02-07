def createEmptyBitmap(bitmap, width, height)
    (1..height).each do |y|
        (1..width).each do |x|
            bitmap["#{x.to_s},#{y.to_s}"] = "O"
        end
    end
    bitmap
end