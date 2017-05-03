class CreateInfluencers < ActiveRecord::Migration[5.0]
  def change
    create_table :influencers do |t|
      t.string :first_name
      t.string :moniker
      t.string :last_name
      t.string :one_liner
      t.text :about
      t.string :front_pic
      t.string :about_pic
      t.text :spotify_about
      t.string :spotify_pic
      t.string :pic_1
      t.string :pic_2
      t.string :facebook_link
      t.string :instagram_link
      t.string :twitter_link
      t.string :website_link
      t.string :spotify_user_id
      t.string :spotify_playlist_id

      t.timestamps
    end
  end
end
