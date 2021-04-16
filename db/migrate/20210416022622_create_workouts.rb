class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :exercise
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.integer :client_id
      t.integer :user_id

      t.timestamps
    end
  end
end
