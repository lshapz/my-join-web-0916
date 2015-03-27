describe "#my_join" do
  let(:cars) { ["CR-V", "Camry", "Escape", "Forester", "Highlander"] }

  it "doesn't change the original array" do
    result = cars.my_join(", ")
    expect(cars).to eq(cars)
    expect(result).to_not eq(cars)
  end

  it "doesn't use #join" do
    expect_any_instance_of(Array).to_not receive(:join)
    result = cars.my_join(", ")
  end

  it "converts each element into a string" do
    expect([1, 3, 5, 7].my_join(" ")).to eq("1 3 5 7")
  end

  context "no argument" do
    it "defaults to joining with an empty string" do
      expect([1, 3, 5, 7].my_join).to eq("1357")
      expect(cars.my_join).to eq("CR-VCamryEscapeForesterHighlander")
    end
  end

  context "with argument" do
    it "joins an array of two elements with the arg" do
      expect(["bear", "tiger"].my_join(" and ")).to eq("bear and tiger")
      expect(["cardinal", "eagle"].my_join(", ")).to eq("cardinal, eagle")
    end

    it "joins an array of thre elements with the arg" do
      animals = ["aardvark", "hedgehog", "wallaby"]
      expect(animals.my_join(" + ")).to eq("aardvark + hedgehog + wallaby")
      
      butterflies = ["monarch", "viceroy", "tiger swallowtail"]
      expect(butterflies.my_join(" & ")).to eq("monarch & viceroy & tiger swallowtail")
      
      fishes = ["clown fish", "blue tang", "angelfish"]
      expect(fishes.my_join("*******")).to eq("clown fish*******blue tang*******angelfish")
    end
  end
end
