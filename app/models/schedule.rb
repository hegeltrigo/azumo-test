class Schedule < ApplicationRecord

	has_many :schedule_days, dependent: :destroy

	accepts_nested_attributes_for :schedule_days, allow_destroy: true, reject_if: proc { |attributes| attributes['starts_at'].blank? }

  validates :starts_at, :ends_at, presence: true
  validate :date_validation
  
  def date_validation
    if ends_at < starts_at
      errors.add(:end_date, "cannot be before the starts at") 
    end 
  end

end
