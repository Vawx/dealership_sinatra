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
  dealer = Dealership.get_dealer_by_name(params[:name])
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  color = params.fetch('color')
  miles = params.fetch('miles')
  id = dealer.name + rand(100).to_s
  car = Car.new(make, model, year, color, miles, id)
  dealer.add_car(car)
  @dealer = dealer
  erb(:dealer_page)
end

get '/car/:name/:id' do
  @dealer = Dealership.get_dealer_by_name(params[:name])
  @car = @dealer.find_car_by_id(params[:id])
  erb(:car_page)
end
