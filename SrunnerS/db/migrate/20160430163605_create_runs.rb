class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.float :distance
      t.time :initTime
      t.time :endTime
      t.date :runDate
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
