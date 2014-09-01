class ChangeExpirationDateFormatInDeals < ActiveRecord::Migration
  def change
  	change_column :deals, :expiration_date, :string
  end
end
