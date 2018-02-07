require 'colour_single_pixel'

describe "colour single pixel" do
    context "given X and Y coordinates, fill with colour C"
       it "returns 4 by 3 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "O", "3,1" => "O", "4,1" => "O",
               "1,2" => "O", "2,2" => "O", "3,2" => "O", "4,2" => "O",
               "1,3" => "O", "2,3" => "O", "3,3" => "O", "4,3" => "O"
           }
           
           expect(colourSinglePixel(bitmap, 1, 3, "P")).to include("1,3" => "P")
           expect(colourSinglePixel(bitmap, 1, 3, "P")).to include("3,1" => "O")
    end
    
    context "given X and Y coordinates, fill with colour C"
       it "returns 5 by 4 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "D", "3,1" => "O", "4,1" => "O",
               "1,2" => "P", "2,2" => "D", "3,2" => "G", "4,2" => "O",
               "1,3" => "O", "2,3" => "D", "3,3" => "O", "4,3" => "O"
           }
           
           expect(colourSinglePixel(bitmap, 4, 2, "G")).to include("4,2" => "G")
           expect(colourSinglePixel(bitmap, 4, 2, "G")).to include("3,2" => "G")
           expect(colourSinglePixel(bitmap, 2, 3, "P")).to include("2,3" => "P")
           expect(colourSinglePixel(bitmap, 2, 3, "P")).to include("2,2" => "D")
    end
end