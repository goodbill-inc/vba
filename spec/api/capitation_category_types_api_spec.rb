=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CapitationCategoryTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CapitationCategoryTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::CapitationCategoryTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CapitationCategoryTypesApi' do
    it 'should create an instance of CapitationCategoryTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::CapitationCategoryTypesApi)
    end
  end

  # unit tests for create_capitation_category_type
  # Create CapitationCategoryType
  # Creates a new CapitationCategoryType
  # @param vbasoftware_database Target database
  # @param capitation_category Capitation Category
  # @param capitation_type Capitation Type
  # @param [Hash] opts the optional parameters
  # @return [CapitationCategoryTypeVBAResponse]
  describe 'create_capitation_category_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_capitation_category_type
  # Delete CapitationCategoryType
  # Deletes an CapitationCategoryType
  # @param vbasoftware_database Target database
  # @param capitation_category Capitation Category
  # @param capitation_type Capitation Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_capitation_category_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_capitation_category_type
  # Get CapitationCategoryType
  # Gets CapitationCategoryType
  # @param vbasoftware_database Target database
  # @param capitation_category Capitation Category
  # @param capitation_type Capitation Type
  # @param [Hash] opts the optional parameters
  # @return [CapitationCategoryTypeVBAResponse]
  describe 'get_capitation_category_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_capitation_category_type
  # List CapitationCategoryType
  # Lists all CapitationCategoryType for the given capitationCategory
  # @param vbasoftware_database Target database
  # @param capitation_category Capitation Category
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CapitationCategoryTypeListVBAResponse]
  describe 'list_capitation_category_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
