class AssignmentGrade < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |course|
        csv << course.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      grade = find_by_id(row["id"]) || new   # Allows updates when same ID is imported
      grade.attributes = row.to_hash
      grade.save!
    end
  end
  
end
