require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/owner')
#require_relative('../models/animal')
also_reload('./models/*')

get '/owners' do
  @owners = Owner.all()# to get all animals
  erb (:"owner/index")
end
get '/owners/new' do
  @owners = Owner.all# new this line added?
  erb( :"owner/new" )
end
get '/owners/:id' do
  @owner = Owner.find(params[:id])
  erb( :"owner/show" )
end

get '/owners/:id/edit' do
  @owner = Owner.find(params[:id])
  erb(:"owner/edit")
end
