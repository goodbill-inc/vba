=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CareCaseProvidersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CareCaseProvidersApi' do
  before do
    # run before each test
    @api_instance = Vba::CareCaseProvidersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CareCaseProvidersApi' do
    it 'should create an instance of CareCaseProvidersApi' do
      expect(@api_instance).to be_instance_of(Vba::CareCaseProvidersApi)
    end
  end

  # unit tests for create_care_case_provider
  # Create CareCaseProvider
  # Creates a new CareCaseProvider
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_provider 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseProviderVBAResponse]
  describe 'create_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_care_case_provider
  # Delete CareCaseProvider
  # Deletes an CareCaseProvider
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_provider_key CareCaseProvider Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_care_case_provider
  # Get CareCaseProvider
  # Gets CareCaseProvider
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_provider_key CareCaseProvider Key
  # @param [Hash] opts the optional parameters
  # @return [CareCaseProviderVBAResponse]
  describe 'get_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_care_case_provider
  # List CareCaseProvider
  # Lists all CareCaseProvider for the given caseKey
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CareCaseProviderListVBAResponse]
  describe 'list_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_care_case_provider
  # Create or Update Batch CareCaseProvider
  # Create or Update multiple CareCaseProvider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_provider 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_care_case_provider
  # Update CareCaseProvider
  # Updates a specific CareCaseProvider.
  # @param vbasoftware_database Target database
  # @param case_key Case Key
  # @param care_case_provider_key CareCaseProvider Key
  # @param care_case_provider 
  # @param [Hash] opts the optional parameters
  # @return [CareCaseProviderVBAResponse]
  describe 'update_care_case_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
