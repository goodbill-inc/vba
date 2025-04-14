=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderCredentialingHoursApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderCredentialingHoursApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderCredentialingHoursApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderCredentialingHoursApi' do
    it 'should create an instance of ProviderCredentialingHoursApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderCredentialingHoursApi)
    end
  end

  # unit tests for create_provider_cred_hours
  # Create ProviderCredHours
  # Creates a new ProviderCredHours
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_hours 
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredHoursVBAResponse]
  describe 'create_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_cred_hours
  # Delete ProviderCredHours
  # Deletes an ProviderCredHours
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_hours_key ProviderCredHours Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_cred_hours
  # Get ProviderCredHours
  # Gets ProviderCredHours
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_hours_key ProviderCredHours Key
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredHoursVBAResponse]
  describe 'get_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_cred_hours
  # List ProviderCredHours
  # Lists all ProviderCredHours for the given providerCredKey
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ProviderCredHoursListVBAResponse]
  describe 'list_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_cred_hours
  # Create or Update Batch ProviderCredHours
  # Create or Update multiple ProviderCredHours at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_hours 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_cred_hours
  # Update ProviderCredHours
  # Updates a specific ProviderCredHours.
  # @param vbasoftware_database Target database
  # @param provider_cred_key ProviderCred Key
  # @param provider_cred_hours_key ProviderCredHours Key
  # @param provider_cred_hours 
  # @param [Hash] opts the optional parameters
  # @return [ProviderCredHoursVBAResponse]
  describe 'update_provider_cred_hours test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
