class CreateMarbles < ActiveRecord::Migration
  def change
    create_table :marbles do |t|
      t.string :name
      t.string :color
      t.references :person, index: true

      t.timestamps
    end
  end
end
