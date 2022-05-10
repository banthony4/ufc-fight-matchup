class FightersController < ApplicationController

  get '/fighters' do
    Fighter.all.to_json
  end

  get '/fighters/:id' do
    Fighter.find(params[:id]).to_json
  end
  
end