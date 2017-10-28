class RemoveZipcodeFromProductions < ActiveRecord::Migration[5.1]
  def change
    remove_column :productions, :zipcode, :integer
  end
end
