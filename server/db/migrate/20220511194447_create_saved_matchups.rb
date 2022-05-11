class CreateSavedMatchups < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_matchups do |t|
      t.string :fighter1
      t.string :fighter1_img
      t.string :fighter2
      t.string :fighter2_img
    end
  end
end
