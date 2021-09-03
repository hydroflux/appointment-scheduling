class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.string :weekday
      t.datetime :start
      t.datetime :end
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
