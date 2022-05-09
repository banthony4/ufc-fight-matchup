class DivisionsController < ApplicationController

  get '/divisions' do
    Division.all.to_json
  end

end