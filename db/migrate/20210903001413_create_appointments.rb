class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :duration
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
