class AddSeasonToShows < ActiveRecord::Migration[6.1]
  def change
    add_column(:shows, :season, :string)
    add_column(:shows, :shows, :string)
  end
end
