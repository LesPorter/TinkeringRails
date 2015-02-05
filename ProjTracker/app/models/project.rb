class Project < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks   # 1:many reslationship
end
