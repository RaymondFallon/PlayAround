class CreateProductions < ActiveRecord::Migration[5.1]
  def change
    create_table :productions do |t|
      t.integer :play_id
      t.string :theater
      t.integer :zip_code
      t.date :opening
      t.date :closing
      t.text :production_notes

      t.timestamps
    end
  end
end
