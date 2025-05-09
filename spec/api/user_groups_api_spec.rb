=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::UserGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserGroupsApi' do
  before do
    # run before each test
    @api_instance = Vba::UserGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserGroupsApi' do
    it 'should create an instance of UserGroupsApi' do
      expect(@api_instance).to be_instance_of(Vba::UserGroupsApi)
    end
  end

  # unit tests for create_user_group
  # Create UserGroup
  # Creates a new UserGroup
  # @param vbasoftware_database Target database
  # @param user_group 
  # @param [Hash] opts the optional parameters
  # @return [UserGroupVBAResponse]
  describe 'create_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_user_group
  # Delete UserGroup
  # Deletes an UserGroup
  # @param vbasoftware_database Target database
  # @param user_group_key UserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_group
  # Get UserGroup
  # Gets UserGroup
  # @param vbasoftware_database Target database
  # @param user_group_key UserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [UserGroupVBAResponse]
  describe 'get_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_user_group
  # List UserGroup
  # Lists all UserGroup 
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [UserGroupListVBAResponse]
  describe 'list_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_user_group
  # Create or Update Batch UserGroup
  # Create or Update multiple UserGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param user_group 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_user_group
  # Update UserGroup
  # Updates a specific UserGroup.
  # @param vbasoftware_database Target database
  # @param user_group_key UserGroup Key
  # @param user_group 
  # @param [Hash] opts the optional parameters
  # @return [UserGroupVBAResponse]
  describe 'update_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
