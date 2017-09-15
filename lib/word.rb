class Word

  @@list = []


def initialize(word_hash)
  @name = word_hash["name"]
  @definition = word_hash["definition"]
  @id = @@list.length +1
end

def self.all()
  @@list
end

def save()
  @@list.push(self)
end

def self.remove(id)
  @@list.map do |word|
    if word.id == id
      word.name = ""
      word.definition = ""
    end
  end
end

def self.update(id, name, definition)
  @@list.map do |word|
    if word.id == id
      word.name = name
      word.definition = definition
    end
  end
end
end
