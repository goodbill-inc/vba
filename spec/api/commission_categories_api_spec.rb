=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CommissionCategoriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommissionCategoriesApi' do
  before do
    # run before each test
    @api_instance = Vba::CommissionCategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommissionCategoriesApi' do
    it 'should create an instance of CommissionCategoriesApi' do
      expect(@api_instance).to be_instance_of(Vba::CommissionCategoriesApi)
    end
  end

  # unit tests for create_commission_category
  # Create CommissionCategory
  # Creates a new CommissionCategory
  # @param vbasoftware_database Target database
  # @param commission_category 
  # @param [Hash] opts the optional parameters
  # @return [CommissionCategoryVBAResponse]
  describe 'create_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_commission_category
  # Delete CommissionCategory
  # Deletes an CommissionCategory
  # @param vbasoftware_database Target database
  # @param comm_category Commission Category
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_commission_category
  # Get CommissionCategory
  # Gets CommissionCategory
  # @param vbasoftware_database Target database
  # @param comm_category Commission Category
  # @param [Hash] opts the optional parameters
  # @return [CommissionCategoryVBAResponse]
  describe 'get_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_commission_category
  # List CommissionCategory
  # Lists all CommissionCategory
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CommissionCategoryListVBAResponse]
  describe 'list_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_commission_category
  # Create or Update Batch CommissionCategory
  # Create or Update multiple CommissionCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param commission_category 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_commission_category
  # Update CommissionCategory
  # Updates a specific CommissionCategory.
  # @param vbasoftware_database Target database
  # @param comm_category Commission Category
  # @param commission_category 
  # @param [Hash] opts the optional parameters
  # @return [CommissionCategoryVBAResponse]
  describe 'update_commission_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
