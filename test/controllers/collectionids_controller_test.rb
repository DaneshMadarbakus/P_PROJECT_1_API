require 'test_helper'

class CollectionidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collectionid = collectionids(:one)
  end

  test "should get index" do
    get collectionids_url, as: :json
    assert_response :success
  end

  test "should create collectionid" do
    assert_difference('Collectionid.count') do
      post collectionids_url, params: { collectionid: { shopify_id: @collectionid.shopify_id } }, as: :json
    end

    assert_response 201
  end

  test "should show collectionid" do
    get collectionid_url(@collectionid), as: :json
    assert_response :success
  end

  test "should update collectionid" do
    patch collectionid_url(@collectionid), params: { collectionid: { shopify_id: @collectionid.shopify_id } }, as: :json
    assert_response 200
  end

  test "should destroy collectionid" do
    assert_difference('Collectionid.count', -1) do
      delete collectionid_url(@collectionid), as: :json
    end

    assert_response 204
  end
end
