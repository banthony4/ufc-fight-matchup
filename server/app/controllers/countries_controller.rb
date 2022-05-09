class CountriesController < ApplicationController

  get '/countries' do
    Country.all.to_json
  end

  get '/countries/:id' do
    Country.find(params[:id]).to_json
  end

end