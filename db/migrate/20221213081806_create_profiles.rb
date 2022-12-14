class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_no
      t.string :email
      t.string :DOB
      t.string :activated

      t.timestamps
    end
  end
end
