require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do 
      erb :root
    end
    
    get "/new" do 
      erb :'pirates/new' 
    end
    
    post "/pirates" do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
<<<<<<< HEAD
  
=======
      binding.pry 
>>>>>>> 949241162f36aafeefa9fe47ef7d0448ab92acee
      
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
