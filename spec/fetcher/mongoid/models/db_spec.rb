require 'spec_helper'

describe 'Fetcher::Mongoid::Models::DB' do 
  describe '.new' do
    context 'call Fetcher::Mongoid::Models::DB.new' do
      it 'should call ::Mongoid.load!' do
        valid_path = "./config/main.yml"
        ::Mongoid.should_receive(:load!).with(valid_path,:development)
        Fetcher::Mongoid::Models::DB.new valid_path
      end
      it 'should raise an exception when a invalid configuration path is passed' do
        invalid_path = "caca_path"
        expect{
          Fetcher::Mongoid::Models::DB.new valid_path
        }.to raise_error NameError
      end
    end   
  end
end