require 'colour_multiple_pixels'


describe "colour multiple pixels with horizontal or vertical line" do
    context "given two X and one Y coordinates, fill with horizontal line colour C"
       it "returns 4 by 3 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "O", "3,1" => "O", "4,1" => "O",
               "1,2" => "O", "2,2" => "O", "3,2" => "O", "4,2" => "O",
               "1,3" => "O", "2,3" => "O", "3,3" => "O", "4,3" => "O"
           }
           
           expect(colourMultiplePixels(bitmap, [1,3], 1, "P")).to include("1,1" => "P")
           expect(colourMultiplePixels(bitmap, [1,3], 1, "P")).to include("2,1" => "P")
           expect(colourMultiplePixels(bitmap, [1,3], 1, "P")).to include("3,1" => "P")
           expect(colourMultiplePixels(bitmap, [1,3], 1, "P")).to include("4,1" => "O")
    end
    
    context "given X and Y coordinates, fill with colour C"
       it "returns 4 by 3 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "D", "3,1" => "O", "4,1" => "O",
               "1,2" => "P", "2,2" => "D", "3,2" => "G", "4,2" => "O",
               "1,3" => "O", "2,3" => "D", "3,3" => "O", "4,3" => "O"
           }
           
           expect(colourMultiplePixels(bitmap, 4, [1,3], "G")).to include("4,1" => "G")
           expect(colourMultiplePixels(bitmap, 4, [1,3], "G")).to include("4,2" => "G")
           expect(colourMultiplePixels(bitmap, 4, [1,3], "G")).to include("4,3" => "G")
           expect(colourMultiplePixels(bitmap, 4, [1,3], "G")).to include("3,3" => "O")
    end
    
    context "given X and Y coordinates, fill with colour C"
       it "returns 6 by 7 bitmap grid with colour added" do
           bitmap = {
               "1,1" => "O", "2,1" => "D", "3,1" => "O", "4,1" => "O", "5,1" => "O", "6,1" => "O",
               "1,2" => "P", "2,2" => "D", "3,2" => "G", "4,2" => "O", "5,2" => "O", "6,2" => "O",
               "1,3" => "O", "2,3" => "D", "3,3" => "O", "4,3" => "O", "5,3" => "O", "6,3" => "O",
               "1,4" => "O", "2,4" => "O", "3,4" => "O", "4,4" => "O", "5,4" => "O", "6,4" => "O",
               "1,5" => "O", "2,5" => "O", "3,5" => "O", "4,5" => "O", "5,5" => "O", "6,5" => "O",
               "1,6" => "O", "2,6" => "O", "3,6" => "O", "4,6" => "O", "5,6" => "O", "6,6" => "O",
               "1,7" => "O", "2,7" => "O", "3,7" => "O", "4,7" => "O", "5,7" => "O", "6,7" => "O"
           }
           
           expect(colourMultiplePixels(bitmap, 1, [1,1], "M")).to include("1,1" => "M")
           expect(colourMultiplePixels(bitmap, 1, [1,1], "M")).to include("2,1" => "D")
           expect(colourMultiplePixels(bitmap, 1, [1,1], "M")).to include("1,2" => "P")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,1" => "M")
           
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,1" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,2" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,3" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,4" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,5" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,6" => "M")
           expect(colourMultiplePixels(bitmap, 4, [1,7], "M")).to include("4,7" => "M")
    end
    
end