require('print_bitmap')

printBitmap({
               "1,1" => "O", "1,2" => "O", "1,3" => "O", "1,4" => "O", "1,5" => "O",
               "2,1" => "O", "2,2" => "O", "2,3" => "O", "2,4" => "O", "2,5" => "O",
               "3,1" => "O", "3,2" => "O", "3,3" => "O", "3,4" => "O", "3,5" => "O",
               "4,1" => "O", "4,2" => "O", "4,3" => "O", "4,4" => "O", "4,5" => "O"
           }, 5, 4)

describe "prints bitmap" do
    context "given print command and bitmap, bitmap width and bitmap height to print" do
       it "prints 2 by 2 empty bitmap" do
           bitmap = {"1,1" => "O", "2,1" => "O", "1,2" => "O", "2,2" => "O"}
           expect { printBitmap(bitmap, 2, 2) }.to output("OO\nOO\n").to_stdout
       end
    end
    
    context "given print command and bitmap, bitmap width and bitmap height to print" do
       it "prints 5 by 4 empty bitmap" do
           bitmap = {
               "1,1" => "O", "2,1" => "O", "3,1" => "O", "4,1" => "O", "5,1" => "O",
               "1,2" => "O", "2,2" => "O", "3,2" => "O", "4,2" => "O", "5,2" => "O",
               "1,3" => "O", "2,3" => "O", "3,3" => "O", "4,3" => "O", "5,3" => "O",
               "1,4" => "O", "2,4" => "O", "3,4" => "O", "4,4" => "O", "5,4" => "O"
           }
           expect { printBitmap(bitmap, 5, 4) }.to output("OOOOO\nOOOOO\nOOOOO\nOOOOO\n").to_stdout
       end
    end
end
