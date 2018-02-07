require "validate_input"

describe "validate input" do
    context "given 'S'" do
        it "returns true" do
            expect(validateInput("S")).to eq true
        end
    end
    
    context "given 'C'" do
        it "returns true" do
            expect(validateInput("C")).to eq true 
        end
    end
    
    context "given 'I 1 1'" do
        it "returns true" do
           expect(validateInput("I 1 1")).to eq true
        end
    end
    
    context "given 'I 4 5'" do
        it "returns true" do
            expect(validateInput("I 4 5")).to eq true
        end
    end
end