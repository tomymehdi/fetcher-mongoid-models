require 'spec_helper'


describe 'Fetcher::Mongoid::Models::DB' do 
  context 'When I create a column' do
    before do
      Fetcher::Mongoid::Models::DB.new "./config/main.yml"
      @column = Column.new
    end

    it 'should return true when insert it empty' do
      @column.save.should == true
    end

    it 'should return true when insert with a Filter that is in the db and i can get the filter back' do
      @column.save
      f = Filter.new :Column => @column
      Filter::Column_id = @column._id
      f.save

      @column.Filter.push f
      @column.save.should == true

      aux_filter = Column.find(@column._id).Filter
      aux_filter.first.should == f
      f.remove
    end

    after do
      @column.remove
    end

  end
end