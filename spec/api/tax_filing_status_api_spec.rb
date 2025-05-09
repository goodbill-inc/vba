=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::TaxFilingStatusApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaxFilingStatusApi' do
  before do
    # run before each test
    @api_instance = Vba::TaxFilingStatusApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxFilingStatusApi' do
    it 'should create an instance of TaxFilingStatusApi' do
      expect(@api_instance).to be_instance_of(Vba::TaxFilingStatusApi)
    end
  end

  # unit tests for create_tax_filing_status
  # Create TaxFilingStatus
  # Creates a new TaxFilingStatus
  # @param vbasoftware_database Target database
  # @param tax_filing_status 
  # @param [Hash] opts the optional parameters
  # @return [TaxFilingStatusVBAResponse]
  describe 'create_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tax_filing_status
  # Delete TaxFilingStatus
  # Deletes an TaxFilingStatus
  # @param vbasoftware_database Target database
  # @param filing_status Filing Status
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tax_filing_status
  # Get TaxFilingStatus
  # Gets TaxFilingStatus
  # @param vbasoftware_database Target database
  # @param filing_status Filing Status
  # @param [Hash] opts the optional parameters
  # @return [TaxFilingStatusVBAResponse]
  describe 'get_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_tax_filing_status
  # List TaxFilingStatus
  # Lists all TaxFilingStatus
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [TaxFilingStatusListVBAResponse]
  describe 'list_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_tax_filing_status
  # Create or Update Batch TaxFilingStatus
  # Create or Update multiple TaxFilingStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param tax_filing_status 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_tax_filing_status
  # Update TaxFilingStatus
  # Updates a specific TaxFilingStatus.
  # @param vbasoftware_database Target database
  # @param filing_status Filing Status
  # @param tax_filing_status 
  # @param [Hash] opts the optional parameters
  # @return [TaxFilingStatusVBAResponse]
  describe 'update_tax_filing_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
