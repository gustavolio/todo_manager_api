require 'rails_helper'

RSpec.describe User, type: :model do

  # =====Test building a user in runtime======
  let(:user) { build(:user) }

  # it { expect(user).to respond_to(:email) }

  # context 'when name is blank' do
  #   #By default before(:each)
  #   before { user.name = " " } 
  #   it { expect(user).not_to be_valid }
  # end

  # context 'when name is nil' do
  #   #By default before(:each)
  #   before { user.name = nil } 
  #   it { expect(user).not_to be_valid }
  # end

  # Replace the two CONTEXTS methods above
  it { expect(user).to validate_presence_of(:name)}   

  # =====Test building a user======
  # before { @user = build(:user) }
  
  # it { expect(@user).to respond_to(:email) }
  # it { expect(@user).to respond_to(:name) }
  # it { expect(@user).to respond_to(:password) }
  # it { expect(@user).to respond_to(:password_confirmation) }
  # it { expect(@user).to be_valid }
  
  
  # =====Test setting a subject======
  # subject { FactoryGirl.build(:user) }
  
  # it { expect(subject).to respond_to(:email) }
  # it { expect(subject).to be_valid }
  
  
  # =====Test based on Rspec.describe User======
  # similar to => it { expect(subject).to respond_to(:email) }
  # it { is_expected.to respond_to(:email) }
  # it { is_expected.to respond_to(:name) } #failure
end
