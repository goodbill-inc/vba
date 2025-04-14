=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FundingAccountSignaturesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FundingAccountSignaturesApi' do
  before do
    # run before each test
    @api_instance = Vba::FundingAccountSignaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FundingAccountSignaturesApi' do
    it 'should create an instance of FundingAccountSignaturesApi' do
      expect(@api_instance).to be_instance_of(Vba::FundingAccountSignaturesApi)
    end
  end

  # unit tests for create_funding_account_signature
  # Create FundingAccountSignature
  # Creates a new FundingAccountSignature
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param funding_account_signature 
  # @param [Hash] opts the optional parameters
  # @return [FundingAccountSignatureVBAResponse]
  describe 'create_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_funding_account_signature
  # Delete FundingAccountSignature
  # Deletes an FundingAccountSignature
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param funding_account_signature_key FundingAccountSignature Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_funding_account_signature
  # Get FundingAccountSignature
  # Gets FundingAccountSignature
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param funding_account_signature_key FundingAccountSignature Key
  # @param [Hash] opts the optional parameters
  # @return [FundingAccountSignatureVBAResponse]
  describe 'get_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_funding_account_signature
  # List FundingAccountSignature
  # Lists all FundingAccountSignature for the given accountKey
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [FundingAccountSignatureListVBAResponse]
  describe 'list_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_funding_account_signature
  # Create or Update Batch FundingAccountSignature
  # Create or Update multiple FundingAccountSignature at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param funding_account_signature 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_funding_account_signature
  # Update FundingAccountSignature
  # Updates a specific FundingAccountSignature.
  # @param vbasoftware_database Target database
  # @param account_key Account Key
  # @param funding_account_signature_key FundingAccountSignature Key
  # @param funding_account_signature 
  # @param [Hash] opts the optional parameters
  # @return [FundingAccountSignatureVBAResponse]
  describe 'update_funding_account_signature test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
