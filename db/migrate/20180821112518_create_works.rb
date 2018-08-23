class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :work_name
      t.text :work_description
      t.string :work_date
    end
  end
end
