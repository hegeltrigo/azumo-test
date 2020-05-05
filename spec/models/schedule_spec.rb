require 'rails_helper'

RSpec.describe Schedule, type: :model do

  it "has a valid factory" do
    expect(build(:schedule)).to be_valid
  end

  let(:schedule) { build(:schedule) }
  
  describe "ActiveModel validations" do
   
    # Basic validations
    it { expect(schedule).to validate_presence_of(:starts_at) }
    it { expect(schedule).to validate_presence_of(:ends_at) }
    
  end
end
