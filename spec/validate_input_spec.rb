require "validate_input"

describe "validate input" do
    context "given 'S'" do
        it "returns true" do
            expect(validateText("S")).to eq true
        end
    end
    
    context "given 'C'" do
        it "returns true" do
            expect(validateText("C")).to eq true 
        end
    end
    
    context "given 'I 1 1'" do
        it "returns true" do
           expect(validateText("I 1 1")).to eq true
        end
    end
    
    context "given 'I 4 5'" do
        it "returns true" do
            expect(validateText("I 4 5")).to eq true
        end
    end
    
end