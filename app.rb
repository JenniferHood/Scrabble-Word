require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
  erb(:index)
end

get('/score') do
  erb(:scrabble_score)
end
