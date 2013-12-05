class AddSelectorToCheckers < ActiveRecord::Migration
  def change
    add_column :checkers, :selector, :string
  end
end
