class Work < ApplicationRecord
  belongs_to :course_categories, optional: true
  validates :work_name, presence: {message: "Le titre doit être renseigné."}
  validates :work_date, presence: {message: "La date doit être valide."}
end
