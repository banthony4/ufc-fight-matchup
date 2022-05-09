class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.belongs_to :fighter, foreign_key: true
      t.string :comments
      t.integer :likes
    end
  end
end
