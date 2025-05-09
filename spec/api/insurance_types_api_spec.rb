=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::InsuranceTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InsuranceTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::InsuranceTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InsuranceTypesApi' do
    it 'should create an instance of InsuranceTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::InsuranceTypesApi)
    end
  end

  # unit tests for create_insurance_type
  # Create InsuranceType
  # Creates a new InsuranceType
  # @param vbasoftware_database Target database
  # @param insurance_type 
  # @param [Hash] opts the optional parameters
  # @return [InsuranceTypeVBAResponse]
  describe 'create_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_insurance_type
  # Delete InsuranceType
  # Deletes an InsuranceType
  # @param vbasoftware_database Target database
  # @param insurance_type Insurance Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_insurance_type
  # Get InsuranceType
  # Gets InsuranceType
  # @param vbasoftware_database Target database
  # @param insurance_type Insurance Type
  # @param [Hash] opts the optional parameters
  # @return [InsuranceTypeVBAResponse]
  describe 'get_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_insurance_type
  # List InsuranceType
  # Lists all InsuranceType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [InsuranceTypeListVBAResponse]
  describe 'list_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_insurance_type
  # Create or Update Batch InsuranceType
  # Create or Update multiple InsuranceType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param insurance_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_insurance_type
  # Update InsuranceType
  # Updates a specific InsuranceType.
  # @param vbasoftware_database Target database
  # @param insurance_type Insurance Type
  # @param insurance_type2 
  # @param [Hash] opts the optional parameters
  # @return [InsuranceTypeVBAResponse]
  describe 'update_insurance_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
