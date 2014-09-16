class AddPurchaseUrlColumnToDeals < ActiveRecord::Migration
  def change
  	add_column :deals, :purchase_url, :string
  end
end
