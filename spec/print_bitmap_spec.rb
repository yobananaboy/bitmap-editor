require('print_bitmap')

describe "prints bitmap" do
    context "given print command and bitmap, bitmap width and bitmap height to print" do
       it "prints 2 by 2 empty bitmap" do
           bitmap = {"1,1" => "O", "1,2" => "O", "2,1" => "O", "2,2" => "O"}
           expect { printBitmap(bitmap, 2, 2) }.to output("OO\nOO\n").to_stdout
       end
    end

end
