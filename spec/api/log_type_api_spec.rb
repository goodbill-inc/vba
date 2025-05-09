=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::LogTypeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogTypeApi' do
  before do
    # run before each test
    @api_instance = Vba::LogTypeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogTypeApi' do
    it 'should create an instance of LogTypeApi' do
      expect(@api_instance).to be_instance_of(Vba::LogTypeApi)
    end
  end

  # unit tests for get_log_type
  # Get LogType
  # Gets LogType
  # @param vbasoftware_database Target database
  # @param name LogType Code
  # @param [Hash] opts the optional parameters
  # @return [LogTypeVBAResponse]
  describe 'get_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_log_type
  # List all LogTypes
  # List all available LogTypes
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [LogTypeListVBAResponse]
  describe 'list_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
