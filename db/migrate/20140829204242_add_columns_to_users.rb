class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :photo, :string
    add_column :users, :age, :integer
    add_column :users, :interest_category_id, :integer
  end
end
