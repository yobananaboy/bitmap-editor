require "validate_text/validate_text"

describe "validate text" do
    context "given a string" do
        it "returns true" do
            expect(validateText("String")).to eq "String"
        end
    end
end