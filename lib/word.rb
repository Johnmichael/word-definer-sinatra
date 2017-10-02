class Word

  @@list = []
  attr_accessor :name, :definition, :example, :extra
  attr_reader :id

  def initialize(word_hash)
    @name = word_hash["name"]
    @definition = []
    @example = word_hash["example"]
    @extra = word_hash["extra"]
    @id = @@list.length+1
  end

  def self.all()
    @@list
  end

  def self.add_definition(id, definition)
    Word.search(id).definition.push(definition)
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

  def self.update(id, name, definition, extra, example)
    @@list.map do |word|
      if word.id == id
        word.extra = extra
        word.example = example
      end
    end
  end

end
