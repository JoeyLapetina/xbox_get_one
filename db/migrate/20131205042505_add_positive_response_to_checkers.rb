class AddPositiveResponseToCheckers < ActiveRecord::Migration
  def change
    add_column :checkers, :positive_response, :string
  end
end
