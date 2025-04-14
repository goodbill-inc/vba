=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::APCSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'APCSchedulesApi' do
  before do
    # run before each test
    @api_instance = Vba::APCSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APCSchedulesApi' do
    it 'should create an instance of APCSchedulesApi' do
      expect(@api_instance).to be_instance_of(Vba::APCSchedulesApi)
    end
  end

  # unit tests for create_apc_schedule
  # Create APCSchedule
  # Creates a new APCSchedule
  # @param vbasoftware_database Target database
  # @param apc_schedule 
  # @param [Hash] opts the optional parameters
  # @return [APCScheduleVBAResponse]
  describe 'create_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_apc_schedule
  # Delete APCSchedule
  # Deletes an APCSchedule
  # @param vbasoftware_database Target database
  # @param a_pc_schedule APC Schedule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_apc_schedule
  # Get APCSchedule
  # Gets APCSchedule
  # @param vbasoftware_database Target database
  # @param a_pc_schedule APC Schedule
  # @param [Hash] opts the optional parameters
  # @return [APCScheduleVBAResponse]
  describe 'get_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_apc_schedule
  # List APCSchedule
  # Lists all APCSchedule
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [APCScheduleListVBAResponse]
  describe 'list_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_apc_schedule
  # Update APCSchedule
  # Updates a specific APCSchedule.
  # @param vbasoftware_database Target database
  # @param a_pc_schedule APC Schedule
  # @param apc_schedule 
  # @param [Hash] opts the optional parameters
  # @return [APCScheduleVBAResponse]
  describe 'update_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_apc_schedule
  # Create or Update Batch APCSchedule
  # Create or Update multiple APCSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param apc_schedule 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_apc_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
