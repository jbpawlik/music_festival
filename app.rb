require('sinatra')
require('sinatra/reloader')
require('./lib/artist')
require('./lib/stage')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @stages = Stage.all
  erb(:stages)
end

get('/stages') do
  @stages = Stage.all
  erb(:stages)
end

get('/stages/new') do
  erb(:new_stage)
end

post('/stages') do
  name = params[:name]
  stage = Stage.new(name, nil)
  stage.save()
  @stages = Stage.all()
  erb(:stages)
end

get('/stages/:id') do
  @stage = Stage.find(params[:id].to_i())
  erb(:stage)
end

get('/stages/:id/edit') do
  @stage = Stage.find(params[:id].to_i())
  erb(:edit_stage)
end

delete('/stages/:id') do
  @stage = Stage.find(params[:id].to_i())
  @stage.delete
  @stages = Stage.all
  erb(:stages)
end

post('/stages/:id/artist/') do
  @stage = Stage.find(params[:id].to_i())
  artist = Artist.new(params[:artist_name], "genre", @stage.id, nil)
  artist.save()
  erb(:artist)
end

get('/stages/:id/artist/:artist_id') do
  @artist = Artist.find(params[:id].to_i())
  erb(:artist)
end


