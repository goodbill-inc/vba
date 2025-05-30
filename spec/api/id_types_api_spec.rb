=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::IDTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IDTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::IDTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IDTypesApi' do
    it 'should create an instance of IDTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::IDTypesApi)
    end
  end

  # unit tests for create_id_type
  # Create IDType
  # Creates a new IDType
  # @param vbasoftware_database Target database
  # @param id_type 
  # @param [Hash] opts the optional parameters
  # @return [IDTypeVBAResponse]
  describe 'create_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_id_type
  # Delete IDType
  # Deletes an IDType
  # @param vbasoftware_database Target database
  # @param type Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_id_type
  # Get IDType
  # Gets IDType
  # @param vbasoftware_database Target database
  # @param type Type
  # @param [Hash] opts the optional parameters
  # @return [IDTypeVBAResponse]
  describe 'get_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_id_type
  # List IDType
  # Lists all IDType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [IDTypeListVBAResponse]
  describe 'list_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_id_type
  # Create or Update Batch IDType
  # Create or Update multiple IDType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param id_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_id_type
  # Update IDType
  # Updates a specific IDType.
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_type 
  # @param [Hash] opts the optional parameters
  # @return [IDTypeVBAResponse]
  describe 'update_id_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
