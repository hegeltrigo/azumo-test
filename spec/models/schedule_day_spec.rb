require 'rails_helper'

RSpec.describe ScheduleDay, type: :model do

  it "has a valid factory" do
    expect(build(:schedule_day)).to be_valid
    
  end

  let(:schedule_day) { build(:schedule_day) }
  
  describe "ActiveModel validations" do
   
    # Basic validations
    it { expect(schedule_day).to validate_presence_of(:starts_at) }
    it { expect(schedule_day).to validate_presence_of(:schedule) }
    
  end
end
