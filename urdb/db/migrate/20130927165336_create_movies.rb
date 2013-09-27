class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :youtube_trailer_id
      t.string :anim_gif_link
      t.text :description

      t.timestamps
    end
  end
end
