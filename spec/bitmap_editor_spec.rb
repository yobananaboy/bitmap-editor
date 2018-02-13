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
    
    context "given input from file invalid_input_letter.txt outputs to stdout" do
        it "receives invalid input letter and returns error message" do
            filepath = 'examples/test/invalid_input_letter.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("Invalid input provided.\nInvalid input on line 3.\n").to_stdout
        end
    end
    
    context "given input from file blank_input_line.txt outputs to stdout" do
        it "receives blank line in input - ignores this" do
            filepath = 'examples/test/blank_input_line.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("OOO\nOOO\nOOO\n").to_stdout
        end
    end
    
    context "given input from file blank_input_line_error.txt outputs to stdout" do
        it "receives blank line in input - ignores this - then errors. Should give correct line of input which errored." do
            filepath = 'examples/test/blank_input_line_error.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("Invalid input provided.\nInvalid input on line 3.\n").to_stdout
        end
    end
    
    context "given input from file add_colour_outside_bitmap_area.txt outputs to stdout" do
        it "receives input to colour outside of bitmap area then errors"  do
            filepath = 'examples/test/add_colour_outside_bitmap_area.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("You have tried to colour a pixel that is outside of the bitmap's area.\nInvalid input on line 3.\n").to_stdout
        end
    end
    
    context "given input from file error_adding_line.txt outputs to stdout" do
        it "receives input to add horizontal line outside bitmap area - errors" do
            filepath = 'examples/test/error_adding_line.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("You have tried to colour a pixel that is outside of the bitmap's area.\nInvalid input on line 5.\n").to_stdout
        end
    end
    
    context "given input from file create_grid_outside_range.txt outputs to stdout" do
        it "receives input to create bitmap outside the 1 to 250 pixel area for bitmap" do
            filepath = 'examples/test/create_grid_outside_range.txt'
            expect { BitmapEditor.new.run(filepath) }.to output("You have entered an incorrect width or height for the bitmap. Please enter a range between 1 and 250.\nInvalid input on line 1.\n").to_stdout
        end
    end
    
end