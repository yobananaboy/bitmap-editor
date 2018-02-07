require 'create_empty_bitmap'

describe "create empty bitmap" do
    context "given 'I 2 3'" do
       it "returns empty 2 by 3 bitmap grid" do
           bitmap = Hash.new("O")
           expect(createEmptyBitmap(bitmap, 2, 3)).to include("2,3" => "O")
           expect(createEmptyBitmap(bitmap, 2, 3)).to include("1,1" => "O")
       end
    end

end
