class RemoveAddNewCategoryColNameFromUsers < ActiveRecord::Migration
  def change
    add_column :users, :interest_category, :string 
  end
end
