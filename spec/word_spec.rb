require('word')
require('rspec')
require('pry')

describe('word') do
  before() do
    Word.empty()
  end


  describe('#initialize') do
    word = Word.new({"name" => "Words", "definition" => "they do things"})
    it("saves initializtion values as intance variables") do
      expect(word.name).to eq("Words")
    end

    it("saves initializtion values as intance variables") do
      expect(word.definition).to eq("they do things")
    end
  end

  describe('#all') do
    it('pushes the word to the array of words') do
      word = Word.new({"name" => "neat"})
      word.save
      expect(Word.all()).to eq([word])
    end
  end

  describe('#save') do
    it('saves the word to list') do
      word = Word.new({"name" => "neat"})
      word.save
      expect(Word.all[0].name).to eq('neat')
    end
  end

  describe('#search') do
  it('searches for the given word') do
    word = Word.new({"name" => "neat"})
    word.save
    expect(Word.search(word.id)).to eq(word)
  end
end

describe('#remove') do
  it('erases the content of a word but does not delete it from the hash') do
    word = Word.new({"name" => 'neat', "definition" => 'A word', "example" => 'An example'})
    word.save
    Word.remove(word.id)
    expect(word.name).to eq("")
    expect(word.definition).to eq("")
    expect(word.example).to eq("")
  end
end

describe('#update') do
  it('adds a definition and/or changes the example') do
    word = Word.new({"name" => 'neat', "definition" => 'A word', "example" => 'An example'})
    word.save
    new_definition = 'an adjective'
    example = ''
    Word.update(word.id, word.name, new_definition, example)
    expect(word.definition).to eq ('an adjective')
  end
end

  describe('#empty') do
    it('resets the array of words to allow it to be tested correctly') do
      word = Word.new({"name" => 'neat', "definition" => 'A word', "example" => 'An example'})
      word.save
      Word.empty()
      expect(Word.all()).to eq([])
    end
  end
end
