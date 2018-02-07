require 'create_empty_bitmap'

describe "create empty bitmap" do
    context "given 'I 2 3'" do
       it "returns empty 2 by 3 bitmap grid" do
           createEmptyBitmap(2, 3).to eq
           {
               "1,1" => "O",
               "1,2" => "O",
               "1,3" => "O",
               "2,1" => "O",
               "2,2" => "O",
               "2,3" => "O"
           }
       end
    end

end
