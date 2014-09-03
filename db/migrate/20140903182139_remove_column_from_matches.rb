class RemoveColumnFromMatches < ActiveRecord::Migration
  def change
  	remove_column :matches, :date_deal_id, :integer
  end
end
