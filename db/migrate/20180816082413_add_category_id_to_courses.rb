class AddCategoryIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_category_id, :integer
    add_index :courses, :course_category_id
  end
end
