require 'sinatra'
require 'sinatra/reloader'
require './lib/dealership.rb'
require './lib/car.rb'
require 'pry'

get '/' do
  @dealerships = Dealership.list
  erb :index
end

get '/add_dealership' do
  erb :add_dealership
end

get '/to_dealership' do
  name = params[:name]
  new_dealer = Dealership.new(name)
  Dealership.add(new_dealer)
  redirect '/'
end

get '/dealer_page/:name' do
  @dealer = Dealership.get_dealer_by_name(params[:name])
  erb(:dealer_page)
end

post '/add_car/:name' do
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  color = params.fetch('color')
  miles = params.fetch('miles')
  car = Car.new(make, model, year, color, miles)
  dealer = Dealership.get_dealer_by_name(params[:name])
  dealer.add_car(car)
  @dealer = dealer
  erb(:dealer_page)
end
