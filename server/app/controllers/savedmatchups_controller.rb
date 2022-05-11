class SavedMatchupsController < ApplicationController
  set :default_content_type, 'application/json'

  get '/savedmatchups' do
    SavedMatchup.all.to_json
  end

  post '/savedmatchups' do 
    matchup = SavedMatchup.create(
      fighter1: params[:fighter1],
      fighter1_img: params[:fighter1_img],
      fighter2: params[:fighter2],
      fighter2_img: params[:fighter2_img]
    )
    matchup.to_json
  end
end
