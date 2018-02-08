require 'clear_bitmap'

describe "clear bitmap" do
    context "given clear command and filled bitmap, clear bitmap" do
       it "creates empty version of bitmap" do
           bitmap = {"1,1" => "M", "2,1" => "N", "1,2" => "O", "2,2" => "P"}
           expect(clearBitmap(bitmap, 2, 2)).to include("1,1" => "O")
           expect(clearBitmap(bitmap, 2, 2)).to include("2,1" => "O")
           expect(clearBitmap(bitmap, 2, 2)).to include("2,2" => "O")
       end
    end
    
    context "given clear command and empty bitmap, return empty bitmap" do
       it "should return empty bitmap, which will have length of 0" do
           bitmap = {}
           expect(clearBitmap(bitmap, 2, 2).length).to be(0)
       end
    end
    
end
