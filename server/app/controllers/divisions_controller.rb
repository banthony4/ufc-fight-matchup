class DivisionsController < ApplicationController

  get '/divisions' do
    Division.all.to_json
  end

  get 'divisions/:id' do 
    Division.find(params[:id]).to_json
  end

end