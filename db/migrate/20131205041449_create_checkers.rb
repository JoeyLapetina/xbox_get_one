class CreateCheckers < ActiveRecord::Migration
  def change
    create_table :checkers do |t|
      t.string :name
      t.string :site
      t.string :url
      t.string :item

      t.timestamps
    end
  end
end
