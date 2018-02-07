require 'create_empty_bitmap'

describe "create empty bitmap" do
    context "given 'I 2 3'" do
       it "returns empty 2 by 3 bitmap grid" do
           BitmapEditor.run('examples/testI.txt').to eq
           {
               "x1y1" => "O",
               "x1y2" => "O",
               "x1y3" => "O",
               "x2y1" => "O",
               "x2y2" => "O",
               "x2y3" => "O",
               "x3y1" => "O",
               "x3y2" => "O",
               "x3y3" => "O"
           }
       end
    end

end
