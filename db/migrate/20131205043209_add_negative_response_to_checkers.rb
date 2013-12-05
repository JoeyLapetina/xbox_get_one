class AddNegativeResponseToCheckers < ActiveRecord::Migration
  def change
    add_column :checkers, :negative_response, :string
  end
end
