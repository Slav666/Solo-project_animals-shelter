require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')
#require_relative('../models/animal')
also_reload('./models/*')
require('pry')

get '/owners' do
  @owners = Owner.all()
  erb ( :"owner/index" )
end

get '/owners/new' do
  @owners = Owner.all
  erb(:"owner/new")
end


get '/owners/:id' do
  @owner = Owner.find(params[:id])
  erb( :"owner/show" )
end

post '/owners' do
  @owner = Owner.new(params)
  @owner.save
  redirect to '/owners'
end

post '/owners/:id/delete' do          
  Owner.delete(params[:id])
  redirect to '/owners'
end
