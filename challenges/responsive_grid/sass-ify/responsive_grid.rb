require 'sinatra/base'
require 'sinatra/reloader'

class ResponsiveGrid < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :bind, "0.0.0.0"

  configure do
    set :haml, :layout => :'layout'
  end

  get '/styles.css' do
    scss '/styles'
  end

  get '/' do
    haml :sassy_grid
  end
end
