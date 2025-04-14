=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderPerDiemApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderPerDiemApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderPerDiemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderPerDiemApi' do
    it 'should create an instance of ProviderPerDiemApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderPerDiemApi)
    end
  end

  # unit tests for create_provider_per_diem
  # Create ProviderPerDiem
  # Creates a new ProviderPerDiem
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_per_diem 
  # @param [Hash] opts the optional parameters
  # @return [ProviderPerDiemVBAResponse]
  describe 'create_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_per_diem
  # Delete ProviderPerDiem
  # Deletes an ProviderPerDiem
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_per_diem_key ProviderPerDiem Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_per_diem
  # Get ProviderPerDiem
  # Gets ProviderPerDiem
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_per_diem_key ProviderPerDiem Key
  # @param [Hash] opts the optional parameters
  # @return [ProviderPerDiemVBAResponse]
  describe 'get_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_per_diem
  # List ProviderPerDiem
  # List ProviderPerDiem for a specific Provider
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @return [ProviderPerDiemListVBAResponse]
  describe 'list_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_per_diem
  # Create or Update Batch ProviderPerDiem
  # Create or Update multiple ProviderPerDiem at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_per_diem 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_per_diem
  # Update ProviderPerDiem
  # Updates a specific ProviderPerDiem.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_per_diem_key ProviderPerDiem Key
  # @param provider_per_diem 
  # @param [Hash] opts the optional parameters
  # @return [ProviderPerDiemVBAResponse]
  describe 'update_provider_per_diem test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
