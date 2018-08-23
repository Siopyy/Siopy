class Professor < ActiveRecord::Base
  has_many :course_categories
end