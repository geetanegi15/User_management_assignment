class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :parmanent_address
      t.string :residencial_address
      t.string :city
      t.string :state
      t.string :pin
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
