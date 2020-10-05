require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
      
    end

    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all
      # binding.pry
      erb :'pirates/show'
    end

    get '/new' do
      erb :'pirates/new'
    end

    

  end
end

