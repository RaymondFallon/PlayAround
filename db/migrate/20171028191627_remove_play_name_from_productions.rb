class RemovePlayNameFromProductions < ActiveRecord::Migration[5.1]
  def change
    remove_column :productions, :play_name, :string
  end
end
