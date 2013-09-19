class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :item_name
      t.integer :category_id
      t.float :cost
      t.datetime :spent_on
      t.text :comments
      t.integer :user_id

      t.timestamps
    end
  end
end
