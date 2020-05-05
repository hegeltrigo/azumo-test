class CreateScheduleDays < ActiveRecord::Migration[6.0]
  def change
    create_table :schedule_days do |t|
      t.datetime :starts_at
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
