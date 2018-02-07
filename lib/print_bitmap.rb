def printBitmap(bitmap, width, height)
    (1..width).each do |x|
        (1..height).each do |y|
            print bitmap["#{x},#{y}"]
        end
        puts
    end
end