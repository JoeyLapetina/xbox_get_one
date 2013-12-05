class FixColumnNamePartTwo < ActiveRecord::Migration
 def change
    rename_column :checkers, :negarive_selector, :negative_selector
  end
end
