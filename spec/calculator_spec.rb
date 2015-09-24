require "calculator"

describe Calculator do

  let(:calc){ Calculator.new }

  describe "#add" do
    it "returns an integer" do
      expect(calc.add 1, 1).to be_an Integer
    end

    context "when adding zero to an integer" do
      it "returns the integer" do
        expect(calc.add 4, 0).to eq 4
      end
    end

    it "is NOT dependent on the operation order" do
      expect(calc.add 1, 2).to eq calc.add(2, 1)
    end

    it "accepts more than 2 arguments" do
      expect(calc.add 2, 4, 3).to eq 9
    end
  end

  describe "#subtract" do
    it "returns an integer" do
      expect(calc.subtract 3, 2).to be_an Integer
    end
  
    context "when subtracting zero" do
      it "returns the integer" do
        expect(calc.subtract 5, 0).to eq 5
      end
    end

    context "when subracting an integer from itself" do
      it "returns zero" do
        expect(calc.subtract 5, 5).to eq 0
      end
    end

    it "IS dependent on the operation order" do
      expect(calc.subtract 5,4).not_to eq calc.subtract(4,5)
    end

    it "accepts more than 2 arguments" do
      expect(calc.subtract 5,1,2).to eq 2
    end

  end

  describe "#multiply" do

    it "returns an integer" do
      expect(calc.multiply 1, 2).to be_an Integer
    end

    context "when multiplying by zero" do
      it "returns zero" do
        expect(calc.multiply 5, 0).to eq 0
      end
    end

    it "is NOT dependent on the operation order" do
      expect(calc.multiply 3, 4).to eq calc.multiply(4, 3)
    end

    context "when multiplying an integer by one" do
      it "returns the first integer" do
        expect(calc.multiply 5, 1).to eq 5
      end
    end

      it "should accept more than two numbers" do
        expect(calc.multiply 5, 3, 2).to eq 30
      end
  end

  describe "#divide"

    it "should return and integer" do
      expect(calc.divide 4, 2).to be_an Integer
    end

    it "IS dependent on the order of operation" do
      expect(calc.divide 4, 2).not_to eq calc.divide(2, 4)
    end

    context "when dividing an integer by one" do
      it "returns the first integer" do
        expect(calc.divide 4, 1).to eq 4
      end
    end

    context "when dividing zero by an integer" do
      it "returns zero" do
        expect(calc.divide 0, 3).to eq 0
      end
    end

    context "when divizing an integer by zero" do
      it "returns an error" do
        expect{(calc.divide 3, 0)}.to raise_exception{ZeroDivisionError}
      end
    end

    it "should accept more than two numbers" do
      expect(calc.divide 8, 2, 2).to eq 2
    end
  
end




