class FightersController < ApplicationController

  get '/fighters' do
    Fighter.all.to_json
  end

  get '/fighter/:id' do
    Fighter.find(params[:id]).to_json
  end
  
end