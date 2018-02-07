require('print_bitmap')

describe "prints bitmap" do
    context "given print command and bitmap to print" do
       it "prints 2 by 2 empty bitmap" do
           bitmap = {"1,1" => "O", "1,2" => "O", "2,1" => "O", "2,2" => "O"}
           expected_output = "OO\nOO"
           expect(createEmptyBitmap(bitmap).should_receive(:puts).with(expected_output))
       end
    end

end
