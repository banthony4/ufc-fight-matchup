class Fighter < ActiveRecord::Base
  belongs_to :country
  belongs_to :division

  def flag
    self.country.flag_img
  end
end