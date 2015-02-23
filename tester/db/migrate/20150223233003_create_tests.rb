class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :correctname

      t.timestamps
    end
  end
end
