class AddHeadshotToFighter < ActiveRecord::Migration[6.1]
  def change
      add_column :fighters, :headshot_url, :string
      add_column :fighters, :action_url, :string
  end
end
