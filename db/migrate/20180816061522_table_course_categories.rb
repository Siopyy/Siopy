class TableCourseCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :course_categories
    add_column :course_categories, :name, :string
    add_column :course_categories, :professor_id, :integer
    add_index :course_categories, :professor_id
  end
end
