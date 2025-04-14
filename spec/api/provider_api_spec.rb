=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderApi' do
    it 'should create an instance of ProviderApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderApi)
    end
  end

  # unit tests for create_provider
  # Create Provider
  # Creates a new Provider
  # @param vbasoftware_database Target database
  # @param provider 
  # @param [Hash] opts the optional parameters
  # @return [ProviderVBAResponse]
  describe 'create_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider
  # Delete Provider
  # Deletes an Provider
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider
  # Get Provider
  # Gets Provider
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @return [ProviderVBAResponse]
  describe 'get_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider
  # List Provider
  # Lists all Provider
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ProviderListVBAResponse]
  describe 'list_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider
  # Create or Update Batch Provider
  # Create or Update multiple Provider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider
  # Update Provider
  # Updates a specific Provider.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider 
  # @param [Hash] opts the optional parameters
  # @return [ProviderVBAResponse]
  describe 'update_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
