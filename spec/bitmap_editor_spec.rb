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
           expect(BitmapEditor.new.run(filepath)).to include("3,2" => "C")
           expect(BitmapEditor.new.run(filepath)).to include("5,6" => "C")
           expect(BitmapEditor.new.run(filepath)).to include("1,2" => "C")
       end
    end
    
    context "given input from file show.txt outputs to stdout" do
       it "receives input to create empty grid and add line of colour" do
           filepath = 'examples/test/create_grid_add_line_colour.txt'
           expect(BitmapEditor.new.run(filepath)).to include("2,2" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,3" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,4" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,5" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,6" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,7" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,8" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,9" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,4" => "J")
           expect(BitmapEditor.new.run(filepath)).to include("2,5" => "J")
           expect(BitmapEditor.new.run(filepath)).to include("2,6" => "J")
       end
    end
    
    
    
    
end
