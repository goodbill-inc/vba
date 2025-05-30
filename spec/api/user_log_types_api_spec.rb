=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::UserLogTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserLogTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::UserLogTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserLogTypesApi' do
    it 'should create an instance of UserLogTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::UserLogTypesApi)
    end
  end

  # unit tests for create_user_log_type
  # Create UserLogType Assignment
  # Creates a new link between an existing User and a LogType
  # @param vbasoftware_database Target database
  # @param user_id User ID
  # @param log_type Log Type
  # @param [Hash] opts the optional parameters
  # @return [UserLogTypeVBAResponse]
  describe 'create_user_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_user_log_type
  # Delete User LogType
  # Deletes a specific User to LogType assignment
  # @param vbasoftware_database Target database
  # @param user_id User ID
  # @param log_type Log Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_log_type
  # Get UserLogType
  # Gets UserLogType
  # @param vbasoftware_database Target database
  # @param user_id User ID
  # @param log_type LogType
  # @param [Hash] opts the optional parameters
  # @return [UserLogTypeVBAResponse]
  describe 'get_user_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_user_log_types
  # List User LogTypes
  # Lists all LogTypes for a specific User ID
  # @param vbasoftware_database Target database
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [UserLogTypeListVBAResponse]
  describe 'list_user_log_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_user_log_type
  # Create Batch User LogType
  # Create multiple User LogType assignments at once.
  # @param vbasoftware_database Target database
  # @param user_id User ID
  # @param user_log_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_user_log_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
