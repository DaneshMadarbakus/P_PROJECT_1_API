class InfluencerSerializer < ActiveModel::Serializer
  has_many :collectionids

  attributes :id, :first_name, :moniker, :last_name, :full_name, :one_liner, :about, :front_pic, :about_pic, :spotify_about, :spotify_pic, :pic_1, :pic_2, :facebook_link, :instagram_link, :twitter_link, :website_link, :spotify_user_id, :spotify_playlist_id

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
