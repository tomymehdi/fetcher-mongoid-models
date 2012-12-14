require 'spec_helper'


describe 'Fetcher::Mongoid::Models::DB' do 
  context 'When I create a filter' do
    before do
      Fetcher::Mongoid::Models::DB.new "./config/main.yml"
      @filter = Filter.new
    end

    it 'should return false when insert without a Column' do
      expect {
        @filter.save
      }.to raise_error NameError, "uninitialized constant Filter::Column_id"
    end

    it 'should return false when insert with a Column that is not in the db' do
      column = Column.new
      @filter.Column = column
      expect {
        @filter.save
      }.to raise_error NameError, "uninitialized constant Filter::Column_id"
    end

    it 'should return true when insert with a valid Column' do
      column = Column.new
      column.save
      f = Filter.new :Column => column
      Filter::Column_id = column._id
      f.save.should == true
      column.remove
      f.remove
    end

    after do
      @filter.remove
    end

  end
end