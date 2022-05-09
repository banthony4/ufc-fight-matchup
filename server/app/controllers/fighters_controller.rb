class FightersController < ApplicationController

  get '/fighters' do
    Fighter.all.to_json
  end
  
end