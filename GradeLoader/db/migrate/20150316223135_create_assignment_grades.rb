class CreateAssignmentGrades < ActiveRecord::Migration
  def change
    create_table :assignment_grades do |t|
      t.string :name
      t.string :letter_grade
      t.float :percent_grade
      t.references :student, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
