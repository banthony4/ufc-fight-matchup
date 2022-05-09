class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.belongs_to :division, foreign_key: true
      t.belongs_to :country, foreign_key: true
      t.string :full_name
      t.integer :age
      t.integer :rank
      t.integer :height
      t.integer :reach
      t.string :record
      t.string :image_url
    end
  end
end
