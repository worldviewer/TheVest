class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :blood_type
      t.integer :guardian_phone_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
