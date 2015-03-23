class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :rating
      t.decimal :price

      t.timestamps null: false
    end
  end
end
