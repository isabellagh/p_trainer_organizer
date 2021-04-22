class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :sets, :reps, :weight, :client_id, :client
  belongs_to :client
end
