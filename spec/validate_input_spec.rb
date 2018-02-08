require "validate_input"

describe "validate input" do
    context "given 'S'" do
        it "returns true because width and height specified, therefore bitmap already created" do
            expect(validateInput("S", 4, 4)).to include("input_type" => "S")
        end
    end
    
    context "given 'S'" do
        it "returns false because no width and height specified, therefore no bitmap created" do
            expect(validateInput("S", 0, 0)).to eq false
        end
    end
    
    context "given 'C'" do
        it "returns true" do
            expect(validateInput("C")).to include("input_type" => "C") 
        end
    end
    
    context "given 'I 1 1'" do
        it "returns true because no width and height specified, therefore new bitmap" do
           expect(validateInput("I 1 1", 0, 0)).to include("input_type" => "I")
           expect(validateInput("I 1 1", 0, 0)).to include("input_width" => 1)
           expect(validateInput("I 1 1", 0, 0)).to include("input_height" => 1)
        end
    end
    
    context "given 'I 4 5'" do
        it "returns false because width and height specified, therefore bitmap already created" do
            expect(validateInput("I 4 5", 10, 10)).to eq false
        end
    end
    
    context "given 'I 300 0'" do
        it "returns false" do
            expect(validateInput("I 300 0")).to eq false
        end
    end
    
    context "given 'L 1 2 C' and pigment coordinates in the bitmap area" do
        it "returns true" do
           expect(validateInput("L 1 2 C", 4, 5)).to include("input_type" => "L")
           expect(validateInput("L 1 2 C", 4, 5)).to include("input_x_coordinate" => 1)
           expect(validateInput("L 1 2 C", 4, 5)).to include("input_y_coordinate" => 2)
           expect(validateInput("L 1 2 C", 4, 5)).to include("input_colour" => "C")
        end
    end
    
    context "given 'L 0 0 C'" do
        it "returns false" do
            expect(validateInput("L 0 0 C"))
        end
    end
    
    context "given 'L 50 50 C' and pigment coordinates out of bitmap area" do
        it "returns false" do
            expect(validateInput("L 50 50 C", 30, 30)).to eq false
        end
    end
    
    context "given 'V 2 3 5 C' and pigment coordinates in the bitmap area" do
        it "returns true" do
            expect(validateInput("V 2 3 5 C", 10, 10)).to include("input_type" => "V")
            expect(validateInput("V 2 3 5 C", 10, 10)).to include("input_x_coordinate" => 2)
            expect(validateInput("V 2 3 5 C", 10, 10)).to include("input_y_coordinate" => [3,5])
            expect(validateInput("V 2 3 5 C", 10, 10)).to include("input_colour" => "C")
        end
    end
    
    context "given 'H 3 2 6 C' and pigment coordinates in the bitmap area" do
        it "returns true" do
            expect(validateInput("H 3 2 6 C", 10, 10)).to include("input_type" => "H")
            expect(validateInput("H 3 2 6 C", 10, 10)).to include("input_x_coordinate" => [2,3])
            expect(validateInput("H 3 2 6 C", 10, 10)).to include("input_y_coordinate" => 6)
            expect(validateInput("H 3 2 6 C", 10, 10)).to include("input_colour" => "C")
        end
    end
    
    context "given 'V 10 11 12 C' and both y pigment coordinates outside the bitmap area" do
        it "returns false" do
            expect(validateInput("V 10 11 12 C", 10, 10)).to eq false
        end
    end
    
    context "given 'V 10 9 12 C' and one y pigment coordinate outside the bitmap area" do
        it "returns false" do
            expect(validateInput("V 10 11 12 C", 10, 10)).to eq false
        end
    end
    
    context "given 'V 10 9 12 C' and x pigment coordinate outside the bitmap area" do
        it "returns false" do
            expect(validateInput("V 10 9 12 C", 9, 30)).to eq false
        end
    end
    
end