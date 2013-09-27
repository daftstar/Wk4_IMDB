class RemoveAnimGifLinkFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :anim_gif_link, :string
  end
end
