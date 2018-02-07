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
    
    context "given 'I 300 0'" do
        it "returns false" do
            expect(validateInput("I 300 0")).to eq false
        end
    end
    
    context "given 'L 1 2 C" do
        it "returns true" do
           expect(validateInput("L 1 2 C")).to eq true
        end
    end
    
    context "given 'L 0 0 C'" do
        it "returns false" do
            expect(validateInput("L 0 0 C"))
        end
    end
    
    context "given 'L 50 50 C' and pigment coordinates out of bitmap range" do
        it "returns false" do
            expect(validateInput("L 50 50 C", 30, 30)).to eq false
        end
    end
    
end