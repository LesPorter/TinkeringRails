class Task < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :project   # 1:1 relationship
end
