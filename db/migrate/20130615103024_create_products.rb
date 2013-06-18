class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName, :null => false, :default => ""
      t.integer :fragrance
      t.integer :flavor
      t.integer :aftertaste
      t.integer :acidity
      t.integer :body
      t.integer :uniformity, :default => 10
      t.integer :balance
      t.integer :cleanCup, :default => 10
      t.integer :sweetness, :default => 10
      t.integer :overall
      t.integer :taint, :default => 0
      t.integer :fault, :default => 0
      t.integer :totalScore
      t.integer :owner_user_id, :null => false, :default => ""
      t.text :description
      t.timestamps
    end
  end
end
