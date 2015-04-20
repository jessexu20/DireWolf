require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'is a valid job' do
    expect(build(:job)).to be_valid
  end
  it 'is invalid without a employer_id' do
    expect(build(:job,employer_id:0)).to_not be_valid
  end
  describe '#outdated'
  it 'returns true if time now is larger than deadline' do
    expect(build(:job,deadline:"2014-09-09").outdated).to be true  
  end
  
  it 'returns false if time now is smaller than deadline' do
    expect(build(:job,deadline:"2015-09-09").outdated).to be false
  end
end