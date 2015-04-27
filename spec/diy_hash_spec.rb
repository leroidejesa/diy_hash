require('rspec')
require('diy_hash')

describe(DiyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
        test_hash = DiyHash.new()
        test_hash.store("kitten", "cute")
        expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end

  describe("#store") do
    it("stores a value along with its key") do
      test_hash = DiyHash.new()
      expect(test_hash.store("kitten", "cute")).to(eq(["kitten", "cute"]))
    end
  end

  describe("#fetch") do
    it("retrieves nil when key is not present in hash") do
        test_hash = DiyHash.new()
        test_hash.store("kitten", "cute")
        expect(test_hash.fetch("puppy")).to(eq("There is no value for this key"))
    end
  end

  describe("#has_key?") do
    it("returns 'yes' when value has a key") do
      test_hash = DiyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.has_key?("kitten")).to(eq("yes"))
    end
  end

describe("#has_key?") do
  it("returns 'no' when value has a key") do
    test_hash = DiyHash.new()
    test_hash.store("kitten", "cute")
    expect(test_hash.has_key?("puppy")).to(eq("no"))
  end
end

end
