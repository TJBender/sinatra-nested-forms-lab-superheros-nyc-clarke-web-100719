require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

   get '/' do
       erb :team
   end

   post '/teams' do
       @team_name = params["team"]["name"]
       @motto = params["team"]["motto"]
       @hero1_name = params["team"]["members"][0]["name1"]
       @power1 = params["team"]["members"][0]["power1"]
       @bio1 = params["team"]["members"][0]["bio1"]
       @hero2_name = params["team"]["members"][0]["name2"]
       @power2 = params["team"]["members"][0]["power2"]
       @bio2 = params["team"]["members"][0]["bio2"]
       @hero3_name = params["team"]["members"][0]["name3"]
       @power3 = params["team"]["members"][0]["power3"]
       @bio3 = params["team"]["members"][0]["bio3"]
       erb :super_hero
   end
end
