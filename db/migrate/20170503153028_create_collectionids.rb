class CreateCollectionids < ActiveRecord::Migration[5.0]
  def change
    create_table :collectionids do |t|
      t.references :influencer, foreign_key: true
      t.string :shopify_id

      t.timestamps
    end
  end
end
