=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ContactCategoriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactCategoriesApi' do
  before do
    # run before each test
    @api_instance = Vba::ContactCategoriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactCategoriesApi' do
    it 'should create an instance of ContactCategoriesApi' do
      expect(@api_instance).to be_instance_of(Vba::ContactCategoriesApi)
    end
  end

  # unit tests for create_contact_category
  # Create ContactCategory
  # Creates a new ContactCategory
  # @param vbasoftware_database Target database
  # @param contact_category 
  # @param [Hash] opts the optional parameters
  # @return [ContactCategoryVBAResponse]
  describe 'create_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_contact_category
  # Delete ContactCategory
  # Deletes an ContactCategory
  # @param vbasoftware_database Target database
  # @param contact_category Contact Category
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_contact_category
  # Get ContactCategory
  # Gets ContactCategory
  # @param vbasoftware_database Target database
  # @param contact_category Contact Category
  # @param [Hash] opts the optional parameters
  # @return [ContactCategoryVBAResponse]
  describe 'get_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_contact_category
  # List ContactCategory
  # Lists all ContactCategory
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ContactCategoryListVBAResponse]
  describe 'list_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_contact_category
  # Create or Update Batch ContactCategory
  # Create or Update multiple ContactCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param contact_category 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_contact_category
  # Update ContactCategory
  # Updates a specific ContactCategory.
  # @param vbasoftware_database Target database
  # @param contact_category Contact Category
  # @param contact_category2 
  # @param [Hash] opts the optional parameters
  # @return [ContactCategoryVBAResponse]
  describe 'update_contact_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
