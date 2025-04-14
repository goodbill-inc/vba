=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CommissionAgencyTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommissionAgencyTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::CommissionAgencyTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommissionAgencyTypesApi' do
    it 'should create an instance of CommissionAgencyTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::CommissionAgencyTypesApi)
    end
  end

  # unit tests for create_commission_agency_type
  # Create CommissionAgencyType
  # Creates a new CommissionAgencyType
  # @param vbasoftware_database Target database
  # @param commission_agency_type 
  # @param [Hash] opts the optional parameters
  # @return [CommissionAgencyTypeVBAResponse]
  describe 'create_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_commission_agency_type
  # Delete CommissionAgencyType
  # Deletes an CommissionAgencyType
  # @param vbasoftware_database Target database
  # @param agency_type Agency Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_commission_agency_type
  # Get CommissionAgencyType
  # Gets CommissionAgencyType
  # @param vbasoftware_database Target database
  # @param agency_type Agency Type
  # @param [Hash] opts the optional parameters
  # @return [CommissionAgencyTypeVBAResponse]
  describe 'get_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_commission_agency_type
  # List CommissionAgencyType
  # Lists all CommissionAgencyType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CommissionAgencyTypeListVBAResponse]
  describe 'list_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_commission_agency_type
  # Create or Update Batch CommissionAgencyType
  # Create or Update multiple CommissionAgencyType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param commission_agency_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_commission_agency_type
  # Update CommissionAgencyType
  # Updates a specific CommissionAgencyType.
  # @param vbasoftware_database Target database
  # @param agency_type Agency Type
  # @param commission_agency_type 
  # @param [Hash] opts the optional parameters
  # @return [CommissionAgencyTypeVBAResponse]
  describe 'update_commission_agency_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
