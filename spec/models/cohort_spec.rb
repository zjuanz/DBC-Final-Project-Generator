require 'rails_helper'

describe Cohort do

  describe '#name' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.name = '' # invalid state
      record.valid? # run validations
      record.errors[:name].should include("can't be blank") # check for presence of error

      record.name = 'best' # valid state
      record.valid? # run validations
      record.errors[:name].should_not include("can't be blank") # check for absence of error
    end
  end
	describe '#pitch_limit' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.pitch_limit = '' # invalid state
      record.valid? # run validations
      record.errors[:pitch_limit].should include("can't be blank") # check for presence of error

      record.pitch_limit = '1' # valid state
      record.valid? # run validations
      record.errors[:pitch_limit].should_not include("can't be blank") # check for absence of error
    end
  end
  describe '#vote_limit' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.vote_limit = '' # invalid state
      record.valid? # run validations
      record.errors[:vote_limit].should include("can't be blank") # check for presence of error

      record.vote_limit = '1' # valid state
      record.valid? # run validations
      record.errors[:vote_limit].should_not include("can't be blank") # check for absence of error
    end
  end
  describe '#pitch_start' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.pitch_start = '' # invalid state
      record.valid? # run validations
      record.errors[:pitch_start].should include("can't be blank") # check for presence of error

      record.pitch_start = '2017-05-05' # valid state
      record.valid? # run validations
      record.errors[:pitch_start].should_not include("can't be blank") # check for absence of error
    end
  end
  describe '#vote_start' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.vote_start = '' # invalid state
      record.valid? # run validations
      record.errors[:vote_start].should include("can't be blank") # check for presence of error

      record.vote_start = '2017-05-05' # valid state
      record.valid? # run validations
      record.errors[:vote_start].should_not include("can't be blank") # check for absence of error
    end
  end
  describe '#vote_end' do
  
    it 'should validate presence' do
      record = Cohort.new
      record.vote_end = '' # invalid state
      record.valid? # run validations
      record.errors[:vote_end].should include("can't be blank") # check for presence of error

      record.vote_end = '2017-05-05' # valid state
      record.valid? # run validations
      record.errors[:vote_end].should_not include("can't be blank") # check for absence of error
    end
  end
end

describe Cohort do
  it "should have a unique name" do
    Cohort.create!(name: "Fox", active: "true", pitch_limit: 2, pitch_start: "2017-05-10", vote_start: "2017-05-11", vote_limit: 3, vote_end: "2017-05-12")
    cohort = Cohort.new(:name=>"Fox")
    cohort.should_not be_valid
    cohort.errors[:name].should include("has already been taken")
  end
end


