class AddZipcodeToProductions < ActiveRecord::Migration[5.1]
  def change
    add_column :productions, :zipcode, :string
  end
end
