require "validate_text/validate_text"

describe "validate text" do
    context "given 'S'" do
        it "returns true" do
            expect(validateText("S")).to eq true
        end
    end
    
    context "given 'I 1 1'" do
        it "returns true" do
           expect(validateText("I 1 1")).to eq true
        end
    end
end