class TableProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors
    add_column :professors, :professor_name, :string
  end
end
