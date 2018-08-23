class Course_category < ActiveRecord::Base
  belongs_to :professors
  has_many :courses
end