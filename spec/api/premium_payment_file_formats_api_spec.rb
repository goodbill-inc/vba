=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PremiumPaymentFileFormatsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PremiumPaymentFileFormatsApi' do
  before do
    # run before each test
    @api_instance = Vba::PremiumPaymentFileFormatsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PremiumPaymentFileFormatsApi' do
    it 'should create an instance of PremiumPaymentFileFormatsApi' do
      expect(@api_instance).to be_instance_of(Vba::PremiumPaymentFileFormatsApi)
    end
  end

  # unit tests for create_prem_payment_file_format
  # Create PremPaymentFileFormat
  # Creates a new PremPaymentFileFormat
  # @param vbasoftware_database Target database
  # @param prem_payment_file_format 
  # @param [Hash] opts the optional parameters
  # @return [PremPaymentFileFormatVBAResponse]
  describe 'create_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_prem_payment_file_format
  # Delete PremPaymentFileFormat
  # Deletes an PremPaymentFileFormat
  # @param vbasoftware_database Target database
  # @param payment_file_format_key Payment File Format Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_prem_payment_file_format
  # Get PremPaymentFileFormat
  # Gets PremPaymentFileFormat
  # @param vbasoftware_database Target database
  # @param payment_file_format_key Payment File Format Key
  # @param [Hash] opts the optional parameters
  # @return [PremPaymentFileFormatVBAResponse]
  describe 'get_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_prem_payment_file_format
  # List PremPaymentFileFormat
  # Lists all PremPaymentFileFormat
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PremPaymentFileFormatListVBAResponse]
  describe 'list_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_prem_payment_file_format
  # Create or Update Batch PremPaymentFileFormat
  # Create or Update multiple PremPaymentFileFormat at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param prem_payment_file_format 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_prem_payment_file_format
  # Update PremPaymentFileFormat
  # Updates a specific PremPaymentFileFormat.
  # @param vbasoftware_database Target database
  # @param payment_file_format_key Payment File Format Key
  # @param prem_payment_file_format 
  # @param [Hash] opts the optional parameters
  # @return [PremPaymentFileFormatVBAResponse]
  describe 'update_prem_payment_file_format test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
