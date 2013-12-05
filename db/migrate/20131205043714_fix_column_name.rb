class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :checkers, :selector, :positive_selector
  end
end
