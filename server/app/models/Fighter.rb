class Fighter < ActiveRecord::Base
  belongs_to :division
  belongs_to :country

end