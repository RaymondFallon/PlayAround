class AddPlayNameToProductions < ActiveRecord::Migration[5.1]
  def change
    add_column :productions, :play_name, :string
  end
end
