class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.references :student, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
