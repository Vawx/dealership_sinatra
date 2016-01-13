require('sinatra')
require('sinatra/reloader')
require('./lib/dealership.rb')
require('./lib/car.rb')

get('/') do
  erb(:index)
end
