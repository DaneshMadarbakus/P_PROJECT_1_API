class CollectionidSerializer < ActiveModel::Serializer
  attributes :id, :shopify_id
  has_one :influencer
end
