require 'bitmap_editor'

describe "bitmap editor" do
    context "given input from file show.txt outputs to stdout" do
       it "receives input to print empty grid" do
           filepath = 'examples/test/empty_grid_test.txt'
           expect{ BitmapEditor.new.run(filepath) }.to output("OOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\n").to_stdout
       end
    end
end
