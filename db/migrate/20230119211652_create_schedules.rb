class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :barber, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
