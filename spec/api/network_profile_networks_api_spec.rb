=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::NetworkProfileNetworksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkProfileNetworksApi' do
  before do
    # run before each test
    @api_instance = Vba::NetworkProfileNetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkProfileNetworksApi' do
    it 'should create an instance of NetworkProfileNetworksApi' do
      expect(@api_instance).to be_instance_of(Vba::NetworkProfileNetworksApi)
    end
  end

  # unit tests for create_network_profile_network
  # Create NetworkProfileNetwork
  # Creates a new NetworkProfileNetwork
  # @param vbasoftware_database Target database
  # @param network_profile_network 
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileNetworkVBAResponse]
  describe 'create_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_network_profile_network
  # Delete NetworkProfileNetwork
  # Deletes an NetworkProfileNetwork
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param network_id Network ID
  # @param eff_date Eff Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_network_profile_network
  # Get NetworkProfileNetwork
  # Gets NetworkProfileNetwork
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param network_id Network ID
  # @param eff_date Eff Date
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileNetworkVBAResponse]
  describe 'get_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_network_profile_network
  # List NetworkProfileNetwork
  # Lists all NetworkProfileNetwork for the given Profile_ID
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [NetworkProfileNetworkListVBAResponse]
  describe 'list_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_network_profile_network
  # Create or Update Batch NetworkProfileNetwork
  # Create or Update multiple NetworkProfileNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param network_profile_network 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_network_profile_network
  # Update NetworkProfileNetwork
  # Updates a specific NetworkProfileNetwork.
  # @param vbasoftware_database Target database
  # @param profile_id Profile ID
  # @param network_id Network ID
  # @param eff_date Eff Date
  # @param network_profile_network 
  # @param [Hash] opts the optional parameters
  # @return [NetworkProfileNetworkVBAResponse]
  describe 'update_network_profile_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
