class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :image_url
      t.integer :expiration_date
      t.integer :merchant_id
    end
  end
end
