class CreatePlays < ActiveRecord::Migration[5.1]
  def change
    create_table :plays do |t|
      t.string :title
      t.string :playwright
      t.integer :male_roles
      t.integer :female_roles
      t.integer :total_roles
      t.boolean :musical
      t.boolean :comedy

      t.timestamps
    end
  end
end
