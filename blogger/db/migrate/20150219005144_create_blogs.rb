class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :blog_text
      t.integer :bloguser_id

      t.timestamps
    end
  end
end
