class AddStatusToCheckers < ActiveRecord::Migration
  def change
    add_column :checkers, :item_status, :boolean
  end
end
