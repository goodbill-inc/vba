=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::EventSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventSchedulesApi' do
  before do
    # run before each test
    @api_instance = Vba::EventSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventSchedulesApi' do
    it 'should create an instance of EventSchedulesApi' do
      expect(@api_instance).to be_instance_of(Vba::EventSchedulesApi)
    end
  end

  # unit tests for create_event_schedule
  # Create EventSchedule
  # Creates a new EventSchedule
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param event_schedule 
  # @param [Hash] opts the optional parameters
  # @return [EventScheduleVBAResponse]
  describe 'create_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_event_schedule
  # Delete EventSchedule
  # Deletes an EventSchedule
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param schedule_id Schedule ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_event_schedule
  # Get EventSchedule
  # Gets EventSchedule
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param schedule_id Schedule ID
  # @param [Hash] opts the optional parameters
  # @return [EventScheduleVBAResponse]
  describe 'get_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_event_schedule
  # List EventSchedule
  # Lists all EventSchedule for a given Event ID
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [EventScheduleListVBAResponse]
  describe 'list_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_event_schedule
  # Create or Update Batch EventSchedule
  # Create or Update multiple EventSchedule at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param event_schedule 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_event_schedule
  # Update EventSchedule
  # Updates a specific EventSchedule.
  # @param vbasoftware_database Target database
  # @param event_id Event ID
  # @param schedule_id Schedule ID
  # @param event_schedule 
  # @param [Hash] opts the optional parameters
  # @return [EventScheduleVBAResponse]
  describe 'update_event_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
