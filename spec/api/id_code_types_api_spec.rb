=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::IDCodeTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IDCodeTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::IDCodeTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IDCodeTypesApi' do
    it 'should create an instance of IDCodeTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::IDCodeTypesApi)
    end
  end

  # unit tests for create_id_code_type
  # Create IDCodeType
  # Creates a new IDCodeType
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_code_type 
  # @param [Hash] opts the optional parameters
  # @return [IDCodeTypeVBAResponse]
  describe 'create_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_id_code_type
  # Delete IDCodeType
  # Deletes an IDCodeType
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_code ID Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_id_code_type
  # Get IDCodeType
  # Gets IDCodeType
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_code ID Code
  # @param [Hash] opts the optional parameters
  # @return [IDCodeTypeVBAResponse]
  describe 'get_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_id_code_type
  # List IDCodeType
  # Lists all IDCodeType for the given type
  # @param vbasoftware_database Target database
  # @param type Type
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [IDCodeTypeListVBAResponse]
  describe 'list_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_id_code_type
  # Create or Update Batch IDCodeType
  # Create or Update multiple IDCodeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_code_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_id_code_type
  # Update IDCodeType
  # Updates a specific IDCodeType.
  # @param vbasoftware_database Target database
  # @param type Type
  # @param id_code ID Code
  # @param id_code_type 
  # @param [Hash] opts the optional parameters
  # @return [IDCodeTypeVBAResponse]
  describe 'update_id_code_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
