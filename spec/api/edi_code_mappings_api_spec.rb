=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::EDICodeMappingsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EDICodeMappingsApi' do
  before do
    # run before each test
    @api_instance = Vba::EDICodeMappingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EDICodeMappingsApi' do
    it 'should create an instance of EDICodeMappingsApi' do
      expect(@api_instance).to be_instance_of(Vba::EDICodeMappingsApi)
    end
  end

  # unit tests for create_edi_code_map
  # Create EDICodeMap
  # Creates a new EDICodeMap
  # @param vbasoftware_database Target database
  # @param edi_code_map 
  # @param [Hash] opts the optional parameters
  # @return [EDICodeMapVBAResponse]
  describe 'create_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_edi_code_map
  # Delete EDICodeMap
  # Deletes an EDICodeMap
  # @param vbasoftware_database Target database
  # @param e_di_code_map_key EDICodeMap Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_edi_code_map
  # Get EDICodeMap
  # Gets EDICodeMap
  # @param vbasoftware_database Target database
  # @param e_di_code_map_key EDICodeMap Key
  # @param [Hash] opts the optional parameters
  # @return [EDICodeMapVBAResponse]
  describe 'get_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_edi_code_map
  # List EDICodeMap
  # Lists all EDICodeMap
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [EDICodeMapListVBAResponse]
  describe 'list_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_edi_code_map
  # Create or Update Batch EDICodeMap
  # Create or Update multiple EDICodeMap at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param edi_code_map 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_edi_code_map
  # Update EDICodeMap
  # Updates a specific EDICodeMap.
  # @param vbasoftware_database Target database
  # @param e_di_code_map_key EDICodeMap Key
  # @param edi_code_map 
  # @param [Hash] opts the optional parameters
  # @return [EDICodeMapVBAResponse]
  describe 'update_edi_code_map test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
