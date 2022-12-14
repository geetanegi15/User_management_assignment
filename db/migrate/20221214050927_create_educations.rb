class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :institute_name
      t.string :university
      t.string :course
      t.string :stream
      t.integer :marks
      t.string :passed_year
      t.string :parsentage

      t.timestamps
    end
  end
end
