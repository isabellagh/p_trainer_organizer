class AddClientToWorkout < ActiveRecord::Migration[6.1]
  def change
    add_reference :workouts, :client, null: false, foreign_key: true
  end
end
