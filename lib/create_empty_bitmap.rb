def createEmptyBitmap(bitmap, width, height)
    (1..width).each do |x|
        (1..height).each do |y|
            bitmap["#{x.to_s},#{y.to_s}"] = "O"
        end
    end
    bitmap
end