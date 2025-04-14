=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::NetworkProfilesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkProfilesApi' do
  before do
    # run before each test
    @api_instance = Vba::NetworkProfilesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkProfilesApi' do
    it 'should create an instance of NetworkProfilesApi' do
      expect(@api_instance).to be_instance_of(Vba::NetworkProfilesApi)
    end
  end

  # unit tests for create_network_profile
  # Create NetworkProfile
  # Creates a new NetworkProfile
  # @param vbasoftware_database Target database
  # @param network_profile 
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileVBAResponse]
  describe 'create_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_network_profile
  # Delete NetworkProfile
  # Deletes an NetworkProfile
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_network_profile
  # Get NetworkProfile
  # Gets NetworkProfile
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileVBAResponse]
  describe 'get_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_network_profile
  # List NetworkProfile
  # Lists all NetworkProfile
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [NetworkProfileListVBAResponse]
  describe 'list_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_network_profile
  # Create or Update Batch NetworkProfile
  # Create or Update multiple NetworkProfile at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param network_profile 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_network_profile
  # Update NetworkProfile
  # Updates a specific NetworkProfile.
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param network_profile 
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileVBAResponse]
  describe 'update_network_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
