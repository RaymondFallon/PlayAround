class AddYearOfReleaseToPlays < ActiveRecord::Migration[5.1]
  def change
    add_column :plays, :year_of_release, :integer
  end
end
