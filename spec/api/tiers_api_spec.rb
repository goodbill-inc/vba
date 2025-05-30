=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::TiersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TiersApi' do
  before do
    # run before each test
    @api_instance = Vba::TiersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TiersApi' do
    it 'should create an instance of TiersApi' do
      expect(@api_instance).to be_instance_of(Vba::TiersApi)
    end
  end

  # unit tests for create_tier
  # Create Tier
  # Creates a new Tier
  # @param vbasoftware_database Target database
  # @param tier 
  # @param [Hash] opts the optional parameters
  # @return [TierVBAResponse]
  describe 'create_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tier
  # Delete Tier
  # Deletes an Tier
  # @param vbasoftware_database Target database
  # @param tier1 Tier1
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tier
  # Get Tier
  # Gets Tier
  # @param vbasoftware_database Target database
  # @param tier1 Tier1
  # @param [Hash] opts the optional parameters
  # @return [TierVBAResponse]
  describe 'get_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_tier
  # List Tier
  # Lists all Tier
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [TierListVBAResponse]
  describe 'list_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_tier
  # Create or Update Batch Tier
  # Create or Update multiple Tier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param tier 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_tier
  # Update Tier
  # Updates a specific Tier.
  # @param vbasoftware_database Target database
  # @param tier1 Tier1
  # @param tier 
  # @param [Hash] opts the optional parameters
  # @return [TierVBAResponse]
  describe 'update_tier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
