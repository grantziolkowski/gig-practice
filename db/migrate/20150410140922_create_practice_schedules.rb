class CreatePracticeSchedules < ActiveRecord::Migration
  def change
    create_table :practice_schedules do |t|
      t.float :practice_hours_per_day
      t.references :user, null: false
      t.boolean :is_completed, default: false, null: false
      t.timestamps
    end
  end
end
