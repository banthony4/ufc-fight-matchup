class CountriesController < ApplicationController

  get '/countries' do
    Country.all.to_json
  end

end