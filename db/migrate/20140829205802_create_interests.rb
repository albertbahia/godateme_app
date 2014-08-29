class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :interest_category
    end
  end
end
