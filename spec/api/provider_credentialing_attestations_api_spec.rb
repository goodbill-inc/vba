=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderCredentialingAttestationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderCredentialingAttestationsApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderCredentialingAttestationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderCredentialingAttestationsApi' do
    it 'should create an instance of ProviderCredentialingAttestationsApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderCredentialingAttestationsApi)
    end
  end

  # unit tests for create_provider_cred_attestation
  # Create ProviderCredAttestation
  # Creates a new ProviderCredAttestation
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_attestation 
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredAttestationVBAResponse]
  describe 'create_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_cred_attestation
  # Delete ProviderCredAttestation
  # Deletes an ProviderCredAttestation
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_attestation_key ProviderCredAttestation Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_cred_attestation
  # Get ProviderCredAttestation
  # Gets ProviderCredAttestation
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_attestation_key ProviderCredAttestation Key
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredAttestationVBAResponse]
  describe 'get_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_cred_attestation
  # List ProviderCredAttestation
  # Lists all ProviderCredAttestation for the given providerCredKey
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ProviderCredAttestationListVBAResponse]
  describe 'list_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_cred_attestation
  # Create or Update Batch ProviderCredAttestation
  # Create or Update multiple ProviderCredAttestation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_attestation 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_cred_attestation
  # Update ProviderCredAttestation
  # Updates a specific ProviderCredAttestation.
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_attestation_key ProviderCredAttestation Key
  # @param provider_cred_attestation 
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredAttestationVBAResponse]
  describe 'update_provider_cred_attestation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
