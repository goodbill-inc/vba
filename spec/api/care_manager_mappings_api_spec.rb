=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareManagerMappingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareManagerMappingsApi' do
  before do
    # run before each test
    @api_instance = Vba::CareManagerMappingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareManagerMappingsApi' do
    it 'should create an instance of CareManagerMappingsApi' do
      expect(@api_instance).to be_instance_of(Vba::CareManagerMappingsApi)
    end
  end

  # unit tests for create_batch_care_manager_mapping
  # Create or Update Batch CareManagerMapping
  # Create multiple CareManagerMapping at once.  If the entity exists, an error message will be returned for this record.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param care_manager_mapping 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'create_batch_care_manager_mapping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_care_manager_mapping
  # Create CareManagerMapping
  # Creates a new CareManagerMapping
  # @param vbasoftware_database Target database
  # @param care_manager_mapping 
  # @param [Hash] opts the optional parameters
  # @return [CareManagerMappingVBAResponse]
  describe 'create_care_manager_mapping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_manager_mapping
  # Delete CareManagerMapping
  # Deletes an CareManagerMapping
  # @param vbasoftware_database Target database
  # @param parent_care_manager_key Parent CareManager Key
  # @param child_care_manager_key Child CareManager Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_manager_mapping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_manager_mapping
  # Get CareManagerMapping
  # Gets CareManagerMapping
  # @param vbasoftware_database Target database
  # @param parent_care_manager_key Parent CareManager Key
  # @param child_care_manager_key Child CareManager Key
  # @param [Hash] opts the optional parameters
  # @return [CareManagerMappingVBAResponse]
  describe 'get_care_manager_mapping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_manager_mapping
  # List CareManagerMapping
  # Lists all CareManagerMapping
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareManagerMappingListVBAResponse]
  describe 'list_care_manager_mapping test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
