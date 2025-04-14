=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::BillTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BillTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::BillTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BillTypesApi' do
    it 'should create an instance of BillTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::BillTypesApi)
    end
  end

  # unit tests for create_bill_type
  # Create BillType
  # Creates a new BillType
  # @param vbasoftware_database Target database
  # @param bill_type 
  # @param [Hash] opts the optional parameters
  # @return [BillTypeVBAResponse]
  describe 'create_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_bill_type
  # Delete BillType
  # Deletes an BillType
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_bill_type
  # Get BillType
  # Gets BillType
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param [Hash] opts the optional parameters
  # @return [BillTypeVBAResponse]
  describe 'get_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_bill_type
  # List BillType
  # Lists all BillType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [BillTypeListVBAResponse]
  describe 'list_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_bill_type
  # Create or Update Batch BillType
  # Create or Update multiple BillType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param bill_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_bill_type
  # Update BillType
  # Updates a specific BillType.
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param bill_type 
  # @param [Hash] opts the optional parameters
  # @return [BillTypeVBAResponse]
  describe 'update_bill_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
