class CreateSearch1s < ActiveRecord::Migration
  def change
    create_table :search1s do |t|
      t.string :keywords
      t.string :category
      t.decimal :min_price
      t.decimal :max_price
      t.integer :isbn

      t.timestamps null: false
    end
  end
end
