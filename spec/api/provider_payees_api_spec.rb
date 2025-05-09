=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderPayeesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderPayeesApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderPayeesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderPayeesApi' do
    it 'should create an instance of ProviderPayeesApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderPayeesApi)
    end
  end

  # unit tests for create_provider_payee
  # Create ProviderPayee
  # Creates a new ProviderPayee
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_payee 
  # @param [Hash] opts the optional parameters
  # @return [ProviderPayeeVBAResponse]
  describe 'create_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_payee
  # Delete ProviderPayee
  # Deletes an ProviderPayee
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param payee_id Payee ID
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_payee
  # Get ProviderPayee
  # Gets ProviderPayee
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param payee_id Payee ID
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [ProviderPayeeVBAResponse]
  describe 'get_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_payee
  # List ProviderPayee
  # Lists all ProviderPayee for the given providerID
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ProviderPayeeListVBAResponse]
  describe 'list_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_payee
  # Create or Update Batch ProviderPayee
  # Create or Update multiple ProviderPayee at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_payee 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_payee
  # Update ProviderPayee
  # Updates a specific ProviderPayee.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param payee_id Payee ID
  # @param effective_date Effective Date
  # @param provider_payee 
  # @param [Hash] opts the optional parameters
  # @return [ProviderPayeeVBAResponse]
  describe 'update_provider_payee test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
