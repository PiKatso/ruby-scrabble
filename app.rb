require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

post('/score') do
  @word = params.fetch('word')
  @score = Scrabble.new.score_word(@word)
  erb(:index)
end
