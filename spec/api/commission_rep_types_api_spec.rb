=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CommissionRepTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommissionRepTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::CommissionRepTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommissionRepTypesApi' do
    it 'should create an instance of CommissionRepTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::CommissionRepTypesApi)
    end
  end

  # unit tests for create_commission_rep_type
  # Create CommissionRepType
  # Creates a new CommissionRepType
  # @param vbasoftware_database Target database
  # @param commission_rep_type 
  # @param [Hash] opts the optional parameters
  # @return [CommissionRepTypeVBAResponse]
  describe 'create_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_commission_rep_type
  # Delete CommissionRepType
  # Deletes an CommissionRepType
  # @param vbasoftware_database Target database
  # @param rep_type Rep Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_commission_rep_type
  # Get CommissionRepType
  # Gets CommissionRepType
  # @param vbasoftware_database Target database
  # @param rep_type Rep Type
  # @param [Hash] opts the optional parameters
  # @return [CommissionRepTypeVBAResponse]
  describe 'get_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_commission_rep_type
  # List CommissionRepType
  # Lists all CommissionRepType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CommissionRepTypeListVBAResponse]
  describe 'list_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_commission_rep_type
  # Create or Update Batch CommissionRepType
  # Create or Update multiple CommissionRepType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param commission_rep_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_commission_rep_type
  # Update CommissionRepType
  # Updates a specific CommissionRepType.
  # @param vbasoftware_database Target database
  # @param rep_type Rep Type
  # @param commission_rep_type 
  # @param [Hash] opts the optional parameters
  # @return [CommissionRepTypeVBAResponse]
  describe 'update_commission_rep_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
