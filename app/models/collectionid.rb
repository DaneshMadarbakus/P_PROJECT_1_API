class Collectionid < ApplicationRecord
  belongs_to :influencer
  validates :influencer_id, presence: true
  validates :shopify_id, presence: true 
end
