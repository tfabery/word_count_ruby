require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word_count')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('word').word_count(params.fetch('sentence'))
  erb(:result)
end
