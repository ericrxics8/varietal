class ChangeScaaStandardAttrInProduct < ActiveRecord::Migration
  def change
    change_column :products, :fragrance, :float
    change_column :products, :flavor, :float
    change_column :products, :aftertaste, :float
    change_column :products, :acidity, :float
    change_column :products, :body, :float
    change_column :products, :uniformity, :float
    change_column :products, :balance, :float
    change_column :products, :cleanCup, :float
    change_column :products, :sweetness, :float
    change_column :products, :overall, :float
    change_column :products, :totalScore, :float
  end
end
