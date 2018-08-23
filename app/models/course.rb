class Course < ApplicationRecord

  belongs_to :course_categories, optional: true
  validates :name, presence: {message: "Le titre doit être renseigné."}
  validates :course_date, presence: {message: "La date doit être valide."}
  include CourseUploader::Attachment.new(:course)


end
