class AddNegativeSelectorToCheckers < ActiveRecord::Migration
  def change
    add_column :checkers, :negarive_selector, :string
  end
end
