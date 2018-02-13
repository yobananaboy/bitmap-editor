def printBitmap(bitmap, width, height)
    (1..height).each do |y|
        (1..width).each do |x|
            print bitmap["#{x},#{y}"]
        end
        puts
    end
    puts
    bitmap
end