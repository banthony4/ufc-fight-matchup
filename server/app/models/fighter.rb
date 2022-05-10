class Fighter < ActiveRecord::Base
  belongs_to :country
  belongs_to :division
end