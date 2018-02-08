def clearBitmap(bitmap, width, height)
    unless bitmap.length == 0
        bitmap = createEmptyBitmap(bitmap, width, height)
    end
    bitmap
end