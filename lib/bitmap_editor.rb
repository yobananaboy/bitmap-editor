require 'validate_input'

class BitmapEditor

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)
    width = 0
    height = 0
    bitmap = Hash.new("O")
    
    File.open(file).each do |line|
      line = line.chomp
      # validateInput(line, width, height)
    end
  end
end
