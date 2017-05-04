Rails.application.routes.draw do
  scope :api do
    resources :collectionids
    resources :influencers
  end
end
