require 'validate_input'
require 'create_empty_bitmap'

class BitmapEditor

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)
    width = 0
    height = 0
    bitmap = Hash.new("O")
    
    File.open(file).each do |line|
      line = line.chomp
      input = validateInput(line, width, height)
      case input["input_type"]
      when "I"
        width = input["input_width"]
        height = input["input_height"]
        bitmap = createEmptyBitmap(bitmap, width, height)
      when "L"
        bitmap = colourSinglePixel(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
      end
    end
    bitmap
  end
end
