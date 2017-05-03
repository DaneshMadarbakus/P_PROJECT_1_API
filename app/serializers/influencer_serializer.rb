class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :moniker, :last_name, :one_liner, :about, :front_pic, :about_pic, :spotify_about, :spotify_pic, :pic_1, :pic_2, :facebook_link, :instagram_link, :twitter_link, :website_link, :spotify_user_id, :spotify_playlist_id
end
