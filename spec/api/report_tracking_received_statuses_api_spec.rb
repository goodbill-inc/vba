=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReportTrackingReceivedStatusesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReportTrackingReceivedStatusesApi' do
  before do
    # run before each test
    @api_instance = Vba::ReportTrackingReceivedStatusesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReportTrackingReceivedStatusesApi' do
    it 'should create an instance of ReportTrackingReceivedStatusesApi' do
      expect(@api_instance).to be_instance_of(Vba::ReportTrackingReceivedStatusesApi)
    end
  end

  # unit tests for create_report_track_received_status
  # Create ReportTrackReceivedStatus
  # Creates a new ReportTrackReceivedStatus
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param report_track_received_status 
  # @param [Hash] opts the optional parameters
  # @return [ReportTrackReceivedStatusVBAResponse]
  describe 'create_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_report_track_received_status
  # Delete ReportTrackReceivedStatus
  # Deletes an ReportTrackReceivedStatus
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param received_status Received Status
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_report_track_received_status
  # Get ReportTrackReceivedStatus
  # Gets ReportTrackReceivedStatus
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param received_status Received Status
  # @param [Hash] opts the optional parameters
  # @return [ReportTrackReceivedStatusVBAResponse]
  describe 'get_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_report_track_received_status
  # List ReportTrackReceivedStatus
  # Lists all ReportTrackReceivedStatus for the given ReportDefinition_Key
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ReportTrackReceivedStatusListVBAResponse]
  describe 'list_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_report_track_received_status
  # Create or Update Batch ReportTrackReceivedStatus
  # Create or Update multiple ReportTrackReceivedStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param report_track_received_status 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_report_track_received_status
  # Update ReportTrackReceivedStatus
  # Updates a specific ReportTrackReceivedStatus.
  # @param vbasoftware_database Target database
  # @param report_definition_key ReportDefinition Key
  # @param received_status Received Status
  # @param report_track_received_status 
  # @param [Hash] opts the optional parameters
  # @return [ReportTrackReceivedStatusVBAResponse]
  describe 'update_report_track_received_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
