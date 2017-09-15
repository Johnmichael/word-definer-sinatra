class Word

  @@list = []

  attr_accessor :name, :definition, :example
  attr_reader :id

  def initialize(word_hash)
    @name = word_hash["name"]
    @definition = word_hash["definition"]
    @example = word_hash["example"]
    @id = @@list.length+1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.search(id)
    search_id = id.to_i
    @@list.each do |word|
      if search_id == word.id
        return word
      end
    end
  end

  def self.remove(id)
    @@list.map do |word|
      if word.id == id
        word.name = ""
        word.definition = ""
        word.example = ""
      end
    end
  end

  def self.update(id, name, definition, example)
    @@list.map do |word|
      if word.id == id
        word.definition = definition
        word.example = example
      end
    end
  end
end
