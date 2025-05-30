=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupPayorAccountNetworksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupPayorAccountNetworksApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupPayorAccountNetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupPayorAccountNetworksApi' do
    it 'should create an instance of GroupPayorAccountNetworksApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupPayorAccountNetworksApi)
    end
  end

  # unit tests for create_group_payor_account_network
  # Create GroupPayorAccountNetwork
  # Creates a new GroupPayorAccountNetwork
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param setting_id Setting ID
  # @param group_payor_account_network 
  # @param [Hash] opts the optional parameters
  # @return [GroupPayorAccountNetworkVBAResponse]
  describe 'create_group_payor_account_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_payor_account_network
  # Delete GroupPayorAccountNetwork
  # Deletes an GroupPayorAccountNetwork
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param setting_id Setting ID
  # @param network_id Network ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_payor_account_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_payor_account_network
  # Get GroupPayorAccountNetwork
  # Gets GroupPayorAccountNetwork
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param setting_id Setting ID
  # @param network_id Network ID
  # @param [Hash] opts the optional parameters
  # @return [GroupPayorAccountNetworkVBAResponse]
  describe 'get_group_payor_account_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_payor_account_network
  # List GroupPayorAccountNetwork
  # Lists all GroupPayorAccountNetwork for the given groupID and settingID
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param setting_id Setting ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [GroupPayorAccountNetworkListVBAResponse]
  describe 'list_group_payor_account_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_payor_account_network
  # Create or Update Batch GroupPayorAccountNetwork
  # Create or Update multiple GroupPayorAccountNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param setting_id Setting ID
  # @param group_payor_account_network 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_payor_account_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
