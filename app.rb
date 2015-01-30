require "bundler/setup"
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @bands = Band.all()
  erb :index
end

post '/bands' do
  name = params.fetch "name"
  @band = Band.create({:name => name})
  redirect "/"
end

get '/bands/:id' do
  @band = Band.find(params.fetch('id').to_i)
  @venues = Venue.all
  erb :band
end

delete '/bands/:id' do
  @band = Band.find(params.fetch("id").to_i)
  @band.destroy()
  redirect "/"
end
