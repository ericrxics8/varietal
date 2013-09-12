class ChangeProductScoreType < ActiveRecord::Migration
  def change
    change_column :products, :taint, :float, :default => 0
    change_column :products, :fault, :float, :default => 0
  end
end
