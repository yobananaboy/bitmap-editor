require 'colour_pixel'

describe "colour single pixel" do
    context "given X and Y coordinates, fill with colour C"
       it "returns 4 by 3 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "O", "3,1" => "O", "4,1" => "O",
               "1,2" => "O", "2,2" => "O", "3,2" => "O", "4,2" => "O",
               "1,3" => "O", "2,3" => "O", "3,3" => "O", "4,3" => "O"
           }
           
           bitmap = Hash.new("O")
           expect(colourPixel(bitmap, 1, 3, "P")).to include("1,3" => "P")
           expect(colourPixel(bitmap, 1, 3, "P")).to include("3,1" => "O")
       end
    end

end