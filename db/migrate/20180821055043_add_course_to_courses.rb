class AddCourseToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_data, :text
  end
end
