class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :coach, null: false, foreign_key: true
      t.string :title
      t.string :weekday
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
