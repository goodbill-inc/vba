=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::DrugCodeUnitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DrugCodeUnitsApi' do
  before do
    # run before each test
    @api_instance = Vba::DrugCodeUnitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DrugCodeUnitsApi' do
    it 'should create an instance of DrugCodeUnitsApi' do
      expect(@api_instance).to be_instance_of(Vba::DrugCodeUnitsApi)
    end
  end

  # unit tests for create_drug_code_unit
  # Create DrugCodeUnit
  # Creates a new DrugCodeUnit
  # @param vbasoftware_database Target database
  # @param drug_code_unit 
  # @param [Hash] opts the optional parameters
  # @return [DrugCodeUnitVBAResponse]
  describe 'create_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_drug_code_unit
  # Delete DrugCodeUnit
  # Deletes an DrugCodeUnit
  # @param vbasoftware_database Target database
  # @param drug_code_unit DrugCode Unit
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_drug_code_unit
  # Get DrugCodeUnit
  # Gets DrugCodeUnit
  # @param vbasoftware_database Target database
  # @param drug_code_unit DrugCode Unit
  # @param [Hash] opts the optional parameters
  # @return [DrugCodeUnitVBAResponse]
  describe 'get_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_drug_code_unit
  # List DrugCodeUnit
  # Lists all DrugCodeUnit
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [DrugCodeUnitListVBAResponse]
  describe 'list_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_drug_code_unit
  # Create or Update Batch DrugCodeUnit
  # Create or Update multiple DrugCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param drug_code_unit 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_drug_code_unit
  # Update DrugCodeUnit
  # Updates a specific DrugCodeUnit.
  # @param vbasoftware_database Target database
  # @param drug_code_unit DrugCode Unit
  # @param drug_code_unit2 
  # @param [Hash] opts the optional parameters
  # @return [DrugCodeUnitVBAResponse]
  describe 'update_drug_code_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
