class CreateDivisions < ActiveRecord::Migration[6.1]
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :weight_limit
    end
  end
end
