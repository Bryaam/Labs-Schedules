class CreateReservationRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :reservation_requests do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.references :laboratory_classroom, foreign_key: true
      t.integer :status, null: false, default: 0
      t.date :estimated_date, null: false
      t.time :starting_time, null: false
      t.time :ending_time, null: false
      t.text :description, null: false
      t.string :special_requirements
      t.string :person_in_charge, null: false

      t.timestamps
    end
  end
end
