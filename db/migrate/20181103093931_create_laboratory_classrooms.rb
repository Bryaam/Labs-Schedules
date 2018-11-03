class CreateLaboratoryClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratory_classrooms do |t|
      t.string :name, unique: true, null: false
      t.integer :capacity

      t.timestamps
    end
  end
end
