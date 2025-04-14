=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProviderTaxonomyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProviderTaxonomyApi' do
  before do
    # run before each test
    @api_instance = Vba::ProviderTaxonomyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProviderTaxonomyApi' do
    it 'should create an instance of ProviderTaxonomyApi' do
      expect(@api_instance).to be_instance_of(Vba::ProviderTaxonomyApi)
    end
  end

  # unit tests for create_provider_taxonomy
  # Create ProviderTaxonomy
  # Creates a new ProviderTaxonomy
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_taxonomy 
  # @param [Hash] opts the optional parameters
  # @return [ProviderTaxonomyVBAResponse]
  describe 'create_provider_taxonomy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_provider_taxonomy
  # Delete ProviderTaxonomy
  # Deletes an ProviderTaxonomy
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_taxonomy_key ProviderTaxonomy Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_provider_taxonomy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_provider_taxonomy
  # Get ProviderTaxonomy
  # Gets ProviderTaxonomy
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_taxonomy_key ProviderTaxonomy Key
  # @param [Hash] opts the optional parameters
  # @return [ProviderTaxonomyVBAResponse]
  describe 'get_provider_taxonomy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_provider_taxonomies
  # List ProviderTaxonomy
  # Lists all ProviderTaxonomy given a specific providerID
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param [Hash] opts the optional parameters
  # @return [ProviderTaxonomyListVBAResponse]
  describe 'list_provider_taxonomies test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_provider_taxonomy
  # Create or Update Batch ProviderTaxonomy
  # Create or Update multiple ProviderTaxonomy at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_taxonomy 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_provider_taxonomy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_provider_taxonomy
  # Update ProviderTaxonomy
  # Updates a specific ProviderTaxonomy.
  # @param vbasoftware_database Target database
  # @param provider_id Provider ID
  # @param provider_taxonomy_key ProviderTaxonomy Key
  # @param provider_taxonomy 
  # @param [Hash] opts the optional parameters
  # @return [ProviderTaxonomyVBAResponse]
  describe 'update_provider_taxonomy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
