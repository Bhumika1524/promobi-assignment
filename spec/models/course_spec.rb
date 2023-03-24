require 'rails_helper'

RSpec.describe Course, type: :model do

  it "creates course" do
    expect(FactoryBot.create(:course)).to be_present
  end
  
end