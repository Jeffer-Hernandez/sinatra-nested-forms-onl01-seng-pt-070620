require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
      
    end

    
    post '/pirates' do
      @pirate = Pirate.new(params)
      
      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all
      
      erb :show
    end

    get '/new' do
      erb :new
    end

    get '/show' do
      erb :show
    end

  end
end

