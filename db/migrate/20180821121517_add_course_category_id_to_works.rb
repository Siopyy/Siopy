class AddCourseCategoryIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :course_category_id, :integer
    add_index :works, :course_category_id
  end
end
