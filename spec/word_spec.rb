require('word')
require('rspec')
require('pry')

describe('creates a word object') do
  describe('#initialize') do
    word = Word.new({"name" => "Words", "definition" => "they do things"})

    it("saves initializtion values as intance variables") do
      expect(word.name).to eq("Words")
    end

    it("saves initializtion values as intance variables") do
      expect(word.definition).to eq("they do things")
    end
  end
end
