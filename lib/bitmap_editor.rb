require './lib/validate_input'
require './lib/create_empty_bitmap'
require './lib/colour_single_pixel'
require './lib/colour_multiple_pixels'
require './lib/clear_bitmap'
require './lib/print_bitmap'

class BitmapEditor

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)
    width = 0
    height = 0
    bitmap = Hash.new("O")
    
    File.open(file).each do |line|
      line = line.chomp.strip.upcase
      input = validateInput(line, width, height)
      if input["input_error"]
        puts input["input_error"]
        break
      end
      case input["input_type"]
      when "I"
        width = input["input_width"]
        height = input["input_height"]
        bitmap = createEmptyBitmap(bitmap, width, height)
      when "L"
        bitmap = colourSinglePixel(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
      when "V"
        bitmap = colourMultiplePixels(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
      when "H"
        bitmap = colourMultiplePixels(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
      when "C"
        bitmap = clearBitmap(bitmap, width, height)
      when "S"
        bitmap = printBitmap(bitmap, width, height)
      end
    end
    bitmap
  end
  
end
