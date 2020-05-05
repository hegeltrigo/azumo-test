class ScheduleDay < ApplicationRecord
  belongs_to :schedule
  validates :starts_at, :schedule, presence: true

end
