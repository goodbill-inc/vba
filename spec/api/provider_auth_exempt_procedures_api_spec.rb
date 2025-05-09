=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderAuthExemptProceduresApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderAuthExemptProceduresApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderAuthExemptProceduresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderAuthExemptProceduresApi' do
    it 'should create an instance of ProviderAuthExemptProceduresApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderAuthExemptProceduresApi)
    end
  end

  # unit tests for create_provider_auth_exempt_procedure
  # Create ProviderAuthExemptProcedure
  # Creates a new ProviderAuthExemptProcedure
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_auth_exempt_procedure 
  # @param [Hash] opts the optional parameters
  # @return [ProviderAuthExemptProcedureVBAResponse]
  describe 'create_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_auth_exempt_procedure
  # Delete ProviderAuthExemptProcedure
  # Deletes an ProviderAuthExemptProcedure
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_auth_exempt_procedure_key ProviderAuthExemptProcedure Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_auth_exempt_procedure
  # Get ProviderAuthExemptProcedure
  # Gets ProviderAuthExemptProcedure
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_auth_exempt_procedure_key ProviderAuthExemptProcedure Key
  # @param [Hash] opts the optional parameters
  # @return [ProviderAuthExemptProcedureVBAResponse]
  describe 'get_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_auth_exempt_procedure
  # List ProviderAuthExemptProcedure
  # Lists all ProviderAuthExemptProcedure for the given providerID
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ProviderAuthExemptProcedureListVBAResponse]
  describe 'list_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_auth_exempt_procedure
  # Create or Update Batch ProviderAuthExemptProcedure
  # Create or Update multiple ProviderAuthExemptProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_auth_exempt_procedure 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_auth_exempt_procedure
  # Update ProviderAuthExemptProcedure
  # Updates a specific ProviderAuthExemptProcedure.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_auth_exempt_procedure_key ProviderAuthExemptProcedure Key
  # @param provider_auth_exempt_procedure 
  # @param [Hash] opts the optional parameters
  # @return [ProviderAuthExemptProcedureVBAResponse]
  describe 'update_provider_auth_exempt_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
