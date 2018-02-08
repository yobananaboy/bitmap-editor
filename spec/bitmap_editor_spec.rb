require 'bitmap_editor'

describe "bitmap editor" do
    context "given input from file show.txt outputs to stdout" do
       it "receives input to create empty grid" do
           filepath = 'examples/test/empty_grid.txt'
           expect(BitmapEditor.new.run(filepath)).to include("1,1" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("5,6" => "O")
       end
    end
    
    context "given input from file show.txt outputs to stdout" do
       it "receives input to create empty grid and add colour" do
           filepath = 'examples/test/create_grid_add_colour.txt'
           expect(BitmapEditor.new.run(filepath)).to include("1,1" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("5,6" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("3,2" => "C")
       end
    end
end
