require 'spec_helper'


describe 'Fetcher::Mongoid::Models::DB' do 
  context 'When I create a source' do
    before do
      Fetcher::Mongoid::Models::DB.new "./config/main.yml"
      @source = Source.new
    end

    it 'should return false when insert without a Column' do
      expect {
        @source.save
      }.to raise_error NameError, "uninitialized constant Source::Column_id"
    end

    it 'should return false when insert with a Column that is not in the db' do
      column = Column.new
      @source.Column = column
      expect {
        @source.save
      }.to raise_error NameError, "uninitialized constant Source::Column_id"
    end

    it 'should return true when insert with a valid Column' do
      column = Column.new
      column.save
      s = Source.new :Column => column
      Source::Column_id = column._id
      s.save.should == true
      column.remove
      s.remove
    end

    after do
      @source.remove
    end

  end
end