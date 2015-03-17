class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.string :photo

      t.timestamps
    end
  end
end
