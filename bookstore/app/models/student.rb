class Student < ActiveRecord::Base
  has_many :cart_items
end
