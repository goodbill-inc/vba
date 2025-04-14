=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FlexVendorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FlexVendorsApi' do
  before do
    # run before each test
    @api_instance = Vba::FlexVendorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlexVendorsApi' do
    it 'should create an instance of FlexVendorsApi' do
      expect(@api_instance).to be_instance_of(Vba::FlexVendorsApi)
    end
  end

  # unit tests for create_flex_vendor
  # Create FlexVendor
  # Creates a new FlexVendor
  # @param vbasoftware_database Target database
  # @param flex_vendor 
  # @param [Hash] opts the optional parameters
  # @return [FlexVendorVBAResponse]
  describe 'create_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_flex_vendor
  # Delete FlexVendor
  # Deletes an FlexVendor
  # @param vbasoftware_database Target database
  # @param flex_vendor Flex Vendor
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_flex_vendor
  # Get FlexVendor
  # Gets FlexVendor
  # @param vbasoftware_database Target database
  # @param flex_vendor Flex Vendor
  # @param [Hash] opts the optional parameters
  # @return [FlexVendorVBAResponse]
  describe 'get_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_flex_vendor
  # List FlexVendor
  # Lists all FlexVendor
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [FlexVendorListVBAResponse]
  describe 'list_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_flex_vendor
  # Create or Update Batch FlexVendor
  # Create or Update multiple FlexVendor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param flex_vendor 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_flex_vendor
  # Update FlexVendor
  # Updates a specific FlexVendor.
  # @param vbasoftware_database Target database
  # @param flex_vendor Flex Vendor
  # @param flex_vendor2 
  # @param [Hash] opts the optional parameters
  # @return [FlexVendorVBAResponse]
  describe 'update_flex_vendor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
