require 'test_helper'

class InfluencersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @influencer = influencers(:one)
  end

  test "should get index" do
    get influencers_url, as: :json
    assert_response :success
  end

  test "should create influencer" do
    assert_difference('Influencer.count') do
      post influencers_url, params: { influencer: { about: @influencer.about, about_pic: @influencer.about_pic, facebook_link: @influencer.facebook_link, first_name: @influencer.first_name, front_pic: @influencer.front_pic, instagram_link: @influencer.instagram_link, last_name: @influencer.last_name, moniker: @influencer.moniker, one_liner: @influencer.one_liner, pic_1: @influencer.pic_1, pic_2: @influencer.pic_2, spotify_about: @influencer.spotify_about, spotify_pic: @influencer.spotify_pic, spotify_playlist_id: @influencer.spotify_playlist_id, spotify_user_id: @influencer.spotify_user_id, twitter_link: @influencer.twitter_link, website_link: @influencer.website_link } }, as: :json
    end

    assert_response 201
  end

  test "should show influencer" do
    get influencer_url(@influencer), as: :json
    assert_response :success
  end

  test "should update influencer" do
    patch influencer_url(@influencer), params: { influencer: { about: @influencer.about, about_pic: @influencer.about_pic, facebook_link: @influencer.facebook_link, first_name: @influencer.first_name, front_pic: @influencer.front_pic, instagram_link: @influencer.instagram_link, last_name: @influencer.last_name, moniker: @influencer.moniker, one_liner: @influencer.one_liner, pic_1: @influencer.pic_1, pic_2: @influencer.pic_2, spotify_about: @influencer.spotify_about, spotify_pic: @influencer.spotify_pic, spotify_playlist_id: @influencer.spotify_playlist_id, spotify_user_id: @influencer.spotify_user_id, twitter_link: @influencer.twitter_link, website_link: @influencer.website_link } }, as: :json
    assert_response 200
  end

  test "should destroy influencer" do
    assert_difference('Influencer.count', -1) do
      delete influencer_url(@influencer), as: :json
    end

    assert_response 204
  end
end
