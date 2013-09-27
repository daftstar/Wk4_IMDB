class AddGiphyIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :giphyID, :string
  end
end
