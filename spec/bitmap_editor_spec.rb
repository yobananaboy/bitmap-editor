require 'bitmap_editor'

describe "bitmap editor" do
    context "given input from file empty_grid.txt outputs to stdout" do
       it "receives input to create empty grid" do
           filepath = 'examples/test/empty_grid.txt'
           expect(BitmapEditor.new.run(filepath)).to include("1,1" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("5,6" => "O")
       end
    end
    
    context "given input from file create_grid_add_colour.txt outputs to stdout" do
       it "receives input to create empty grid and add colour" do
           filepath = 'examples/test/create_grid_add_colour.txt'
           expect(BitmapEditor.new.run(filepath)).to include("1,1" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("3,2" => "C")
           expect(BitmapEditor.new.run(filepath)).to include("5,6" => "C")
           expect(BitmapEditor.new.run(filepath)).to include("1,2" => "C")
       end
    end
    
    context "given input from file create_grid_add_line_colour.txt outputs to stdout" do
       it "receives input to create empty grid and add line of colour" do
           filepath = 'examples/test/create_grid_add_line_colour.txt'
           expect(BitmapEditor.new.run(filepath)).to include("2,2" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,3" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,7" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,8" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("2,9" => "Q")
           expect(BitmapEditor.new.run(filepath)).to include("4,4" => "J")
           expect(BitmapEditor.new.run(filepath)).to include("5,4" => "J")
           expect(BitmapEditor.new.run(filepath)).to include("6,4" => "J")
       end
    end
    
    context "given input from file clear.txt outputs to stdout" do
       it "receives input to create empty grid, clear and then add single pixel of colour" do
           filepath = 'examples/test/clear.txt'
           expect(BitmapEditor.new.run(filepath)).to include("1,1" => "K")
           expect(BitmapEditor.new.run(filepath)).to include("1,2" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("2,1" => "O")
           expect(BitmapEditor.new.run(filepath)).to include("10,10" => "O")
       end
    end
    
    context "given input from file print.txt outputs to stdout" do
       it "receives input to create empty grid, add horizontal line and then show output" do
          filepath = 'examples/test/print.txt'
          expect { BitmapEditor.new.run(filepath) }.to output("OOO\nDDD\nOOO\n").to_stdout
       end
    end
    
    context "given input from file show.txt outputs to stdout" do
       it "receives input S and returns error message" do
          filepath = 'examples/show.txt'
          expect { BitmapEditor.new.run(filepath) }.to output("Error. Cannot show bitmap. Please create a bitmap before using 'S' command.\nInvalid input on line 1.\n").to_stdout
       end
    end
    
end
