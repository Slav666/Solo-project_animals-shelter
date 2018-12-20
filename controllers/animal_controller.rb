require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/animal')
#require_relative('..models/owner')
also_reload('./models/*')


require('pry')

get '/animals' do
  @animals = Animal.all
  erb( :"animal/index" )
end

get '/animals/new' do  #this one need to be first before next line
  @animals = Animal.all
  erb(:"animal/new")
end




post '/animals' do
  @animal = Animal.new(params)
  @animal.save
  redirect to '/animals'
end

get '/animals/:id/adopt' do
  @animal = Animal.find(params['id'].to_i)
  @owners = Owner.all
  erb(:"animal/adopt")
end

post '/animals/:id/adopt' do
  animal = Animal.find(params['id'])
  animal.owner_id = params['owner_id'].to_i
  animal.ready_adoption = params['ready_adoption']
  animal.update
  redirect to "/animals"
end

get '/animals/:id' do
  @animal = Animal.find(params[:id].to_i)
  erb( :"animal/show" )
end
