require 'create_empty_bitmap'

describe "create empty bitmap" do
    context "given 'empty bitmap and width of 2 and height of 3'" do
       it "returns empty 2 by 3 bitmap grid" do
           bitmap = Hash.new("O")
           expect(createEmptyBitmap(bitmap, 2, 3)).to include("2,3" => "O")
           expect(createEmptyBitmap(bitmap, 2, 3)).to include("1,1" => "O")
       end
    end
    
    context "given 'empty bitmap and width of 1 and height of 30'" do
       it "returns empty 1 by 30 bitmap grid" do
           bitmap = Hash.new("O")
           expect(createEmptyBitmap(bitmap, 1, 30)).to include("1,1" => "O")
           expect(createEmptyBitmap(bitmap, 1, 30)).to include("1,30" => "O")
           expect(createEmptyBitmap(bitmap, 1, 30)).not_to include("2,1")
           expect(createEmptyBitmap(bitmap, 1, 30)).not_to include("2,30")
       end
    end
    
    
    context "given 'empty bitmap and width of 250 and height of 250'" do
        it "returns empty 250 by 250 bitmap grid" do
            bitmap = Hash.new("O")
            expect(createEmptyBitmap(bitmap, 250, 250)).to include("250,250" => "O")
            expect(createEmptyBitmap(bitmap, 250, 250)).to include("150,170" => "O")
            expect(createEmptyBitmap(bitmap, 250, 250)).not_to include("251,251")
            expect(createEmptyBitmap(bitmap, 250, 250)).not_to include("0,0")
        end
    end
    
    context "given 'empty bitmap and width of 1 and height of 1'" do
        it "returns empty 1 by 1 bitmap grid" do
            bitmap = Hash.new("O")
            expect(createEmptyBitmap(bitmap, 1, 1)).to include("1,1" => "O")
            expect(createEmptyBitmap(bitmap, 1, 1)).not_to include("0,0")
            expect(createEmptyBitmap(bitmap, 1, 1)).not_to include("1,0")
            expect(createEmptyBitmap(bitmap, 1, 1)).not_to include("0,1")
            expect(createEmptyBitmap(bitmap, 1, 1)).not_to include("2,1")
            expect(createEmptyBitmap(bitmap, 1, 1)).not_to include("2,2")
        end
    end

end
