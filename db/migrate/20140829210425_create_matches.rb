class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id1
      t.integer :user_id2
      t.integer :date_deal_id
    end
  end
end
