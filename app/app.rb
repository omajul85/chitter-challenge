require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/peeps' do
  	@peeps = Peep.all
  	erb :'peeps/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end