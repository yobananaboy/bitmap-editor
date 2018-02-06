require "validate_text/validate_text"

describe "validate text" do
    context "given 'S'" do
        it "returns true" do
            expect(validateText("S")).to eq true
        end
    end
end