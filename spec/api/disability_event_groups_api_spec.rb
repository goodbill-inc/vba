=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::DisabilityEventGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DisabilityEventGroupsApi' do
  before do
    # run before each test
    @api_instance = Vba::DisabilityEventGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DisabilityEventGroupsApi' do
    it 'should create an instance of DisabilityEventGroupsApi' do
      expect(@api_instance).to be_instance_of(Vba::DisabilityEventGroupsApi)
    end
  end

  # unit tests for create_disability_event_group
  # Create DisabilityEventGroup
  # Creates a new DisabilityEventGroup
  # @param vbasoftware_database Target database
  # @param disability_event_group 
  # @param [Hash] opts the optional parameters
  # @return [DisabilityEventGroupVBAResponse]
  describe 'create_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_disability_event_group
  # Delete DisabilityEventGroup
  # Deletes an DisabilityEventGroup
  # @param vbasoftware_database Target database
  # @param disability_event_group_key DisabilityEventGroup Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_disability_event_group
  # Get DisabilityEventGroup
  # Gets DisabilityEventGroup
  # @param vbasoftware_database Target database
  # @param disability_event_group_key DisabilityEventGroup Key
  # @param [Hash] opts the optional parameters
  # @return [DisabilityEventGroupVBAResponse]
  describe 'get_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_disability_event_group
  # List DisabilityEventGroup
  # Lists all DisabilityEventGroup
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [DisabilityEventGroupListVBAResponse]
  describe 'list_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_disability_event_group
  # Create or Update Batch DisabilityEventGroup
  # Create or Update multiple DisabilityEventGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param disability_event_group 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_disability_event_group
  # Update DisabilityEventGroup
  # Updates a specific DisabilityEventGroup.
  # @param vbasoftware_database Target database
  # @param disability_event_group_key DisabilityEventGroup Key
  # @param disability_event_group 
  # @param [Hash] opts the optional parameters
  # @return [DisabilityEventGroupVBAResponse]
  describe 'update_disability_event_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
