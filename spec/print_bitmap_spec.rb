require('print_bitmap')

describe "prints bitmap" do
    context "given print command and bitmap to print" do
       it "prints 2 by 2 empty bitmap" do
           bitmap = {"1,1" => "O", "1,2" => "O", "2,1" => "O", "2,2" => "O"}
           expected_output = "OO\nOO"
           expect(printBitmap(bitmap)).to output(expected_output).to_stdout
       end
    end

end
