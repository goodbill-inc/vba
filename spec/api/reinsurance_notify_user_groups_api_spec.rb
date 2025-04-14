=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceNotifyUserGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceNotifyUserGroupsApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceNotifyUserGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceNotifyUserGroupsApi' do
    it 'should create an instance of ReinsuranceNotifyUserGroupsApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceNotifyUserGroupsApi)
    end
  end

  # unit tests for create_reins_contract_notify_group
  # Create ReinsContractNotifyGroup
  # Creates a new ReinsContractNotifyGroup
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_notify_group 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractNotifyGroupVBAResponse]
  describe 'create_reins_contract_notify_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_contract_notify_group
  # Delete ReinsContractNotifyGroup
  # Deletes an ReinsContractNotifyGroup
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param user_group_key UserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_contract_notify_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_contract_notify_group
  # Get ReinsContractNotifyGroup
  # Gets ReinsContractNotifyGroup
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param user_group_key UserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractNotifyGroupVBAResponse]
  describe 'get_reins_contract_notify_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_contract_notify_group
  # List ReinsContractNotifyGroup
  # Lists all ReinsContractNotifyGroup for the given reinsContractKey
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ReinsContractNotifyGroupListVBAResponse]
  describe 'list_reins_contract_notify_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_contract_notify_group
  # Create or Update Batch ReinsContractNotifyGroup
  # Create or Update multiple ReinsContractNotifyGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_notify_group 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_contract_notify_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
