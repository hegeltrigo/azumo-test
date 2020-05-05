class Schedule < ApplicationRecord

	validates :starts_at, :ends_at, presence: true
	has_many :schedule_days, dependent: :destroy

	accepts_nested_attributes_for :schedule_days, allow_destroy: true


	def self.custom_params(params)
		custom_params = params
    custom_params[:starts_at] = Schedule.convert_date(custom_params["starts_at"])
    custom_params[:ends_at] = Schedule.convert_date(custom_params["ends_at"])
    if custom_params[:schedule_days_attributes]
      custom_params[:schedule_days_attributes].each do |num|
        debugger
        custom_params[:schedule_days_attributes][num[0]][:starts_at] = Schedule.convert_date(num[1][:starts_at]) unless num[1][:starts_at].empty?
      end
    end
    custom_params
  end	

  def self.convert_date(date_string)
    starts_at = date_string.split("/")
    DateTime.new(starts_at[2].to_i, starts_at[0].to_i, starts_at[1].to_i)
  end  	

end
