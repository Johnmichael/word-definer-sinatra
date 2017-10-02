require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all
  erb(:input)
end

post('/') do
  name = params["name"]
  definition = params["definition"]

  word_hash = {"name" => name}

  word = Word.new(word_hash)
  word.save
  @list = Word.all
  erb(:input)
end

get('/:id') do
  @word = Word.search(params[:id])
  definition = params['definition']
  erb(:word_detail)
end

post('/:id') do
  @word = Word.search(params[:id])
  Word.remove(@word.id)
  redirect '/'
  erb(:word_detail)
end


get('/update/:id') do
  @word = Word.search(params[:id])
  erb(:update)
end

post('/update/:id') do
  @word = Word.search(params[:id])

  name = params["name"]
  extra = params["extra"]
  example = params["example"]

  Word.update(@word.id, name, extra, example)
  erb(:update)
end
