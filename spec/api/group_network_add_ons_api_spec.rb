=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupNetworkAddOnsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupNetworkAddOnsApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupNetworkAddOnsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupNetworkAddOnsApi' do
    it 'should create an instance of GroupNetworkAddOnsApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupNetworkAddOnsApi)
    end
  end

  # unit tests for create_group_network_add_on
  # Create GroupNetworkAddOn
  # Creates a new GroupNetworkAddOn
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param group_network_add_on 
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkAddOnVBAResponse]
  describe 'create_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_network_add_on
  # Delete GroupNetworkAddOn
  # Deletes an GroupNetworkAddOn
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param group_network_add_on_key GroupNetworkAddOn Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_network_add_on
  # Get GroupNetworkAddOn
  # Gets GroupNetworkAddOn
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param group_network_add_on_key GroupNetworkAddOn Key
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkAddOnVBAResponse]
  describe 'get_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_network_add_on
  # List GroupNetworkAddOn
  # Lists all GroupNetworkAddOn for the given groupID
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [GroupNetworkAddOnListVBAResponse]
  describe 'list_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_network_add_on
  # Create or Update Batch GroupNetworkAddOn
  # Create or Update multiple GroupNetworkAddOn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param group_network_add_on 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_network_add_on
  # Update GroupNetworkAddOn
  # Updates a specific GroupNetworkAddOn.
  # @param vbasoftware_database Target database
  # @param group_id Group ID
  # @param division_id Division ID
  # @param coverage_start Coverage Start
  # @param network_id NetworkID
  # @param state State
  # @param group_network_add_on_key GroupNetworkAddOn Key
  # @param group_network_add_on 
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkAddOnVBAResponse]
  describe 'update_group_network_add_on test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
