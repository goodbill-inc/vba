=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CallDestinationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CallDestinationsApi' do
  before do
    # run before each test
    @api_instance = Vba::CallDestinationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallDestinationsApi' do
    it 'should create an instance of CallDestinationsApi' do
      expect(@api_instance).to be_instance_of(Vba::CallDestinationsApi)
    end
  end

  # unit tests for create_call_tracking_call_destination
  # Create CallTrackingCallDestination
  # Creates a new CallTrackingCallDestination
  # @param vbasoftware_database Target database
  # @param call_tracking_call_destination 
  # @param [Hash] opts the optional parameters
  # @return [CallTrackingCallDestinationVBAResponse]
  describe 'create_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_call_tracking_call_destination
  # Delete CallTrackingCallDestination
  # Deletes an CallTrackingCallDestination
  # @param vbasoftware_database Target database
  # @param call_destination Call Destination
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_call_tracking_call_destination
  # Get CallTrackingCallDestination
  # Gets CallTrackingCallDestination
  # @param vbasoftware_database Target database
  # @param call_destination Call Destination
  # @param [Hash] opts the optional parameters
  # @return [CallTrackingCallDestinationVBAResponse]
  describe 'get_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_call_tracking_call_destination
  # List CallTrackingCallDestination
  # Lists all CallTrackingCallDestination
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CallTrackingCallDestinationListVBAResponse]
  describe 'list_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_call_tracking_call_destination
  # Create or Update Batch CallTrackingCallDestination
  # Create or Update multiple CallTrackingCallDestination at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param call_tracking_call_destination 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_call_tracking_call_destination
  # Update CallTrackingCallDestination
  # Updates a specific CallTrackingCallDestination.
  # @param vbasoftware_database Target database
  # @param call_destination Call Destination
  # @param call_tracking_call_destination 
  # @param [Hash] opts the optional parameters
  # @return [CallTrackingCallDestinationVBAResponse]
  describe 'update_call_tracking_call_destination test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
