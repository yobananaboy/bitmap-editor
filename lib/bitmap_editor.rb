require './lib/validate_input'
require './lib/create_empty_bitmap'
require './lib/colour_single_pixel'
require './lib/colour_multiple_pixels'
require './lib/clear_bitmap'
require './lib/print_bitmap'

class BitmapEditor

  def run(file)
    
    return puts "please provide correct file" if file.nil? || !File.exists?(file)
    
    count = 1
    width = 0 
    height = 0
    bitmap = Hash.new("O")
    
    File.open(file).each do |line|
      
      # strip line and put it to uppercase to avoid errors with errant spaces or lowercase letters
      
      line = line.chomp.strip.upcase
      
      unless line.length == 0
      
        # unless line length is 0, we want to validate this line of input
      
        input = validateInput(line, width, height)
        
        # if there has been an error, tell the user what the error was and where it occurred in the file they added and break out of loop
        
        if input["input_error"]
          puts "Error: #{input["input_error"]}"
          puts "Invalid input on line #{count} in #{file}."
          break
        end
        
        # if input is valid, then call relevant method depending on the input type
        
        case input["input_type"]
        when "I"
          width = input["input_width"]
          height = input["input_height"]
          bitmap = createEmptyBitmap(bitmap, width, height)
        when "L"
          bitmap = colourSinglePixel(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
        when "V", "H"
          bitmap = colourMultiplePixels(bitmap, input["input_x_coordinate"], input["input_y_coordinate"], input["input_colour"])
        when "C"
          bitmap = clearBitmap(bitmap, width, height)
        when "S"
          bitmap = printBitmap(bitmap, width, height)
        end
        
      end
      
      # update the count when we have finished with each line - because we will be moving on to the next line
      
      count +=1
      
    end
    
    bitmap
    
  end
  
end
