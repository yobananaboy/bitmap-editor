require "validators/check_bitmap_created"

describe "check bitmap created" do
    context "given width of 5 and height of 5" do
        it "returns true" do
            expect(checkBitmapCreated(5, 5)).to eq true
        end
    end
    
    context "given width of 0 and height of 0" do
        it "returns false" do
            expect(checkBitmapCreated(0, 0)).to eq false
        end
    end
    
    context "given width of 0 and height of 5" do
        it "returns false" do
            expect(checkBitmapCreated(0, 5)).to eq false
        end
    end
    
    context "given width of 5 and height of 0" do
        it "returns false" do
            expect(checkBitmapCreated(5, 0)).to eq false
        end
    end
    
end