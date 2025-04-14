=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SecurityFieldUserGroupsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityFieldUserGroupsApi' do
  before do
    # run before each test
    @api_instance = Vba::SecurityFieldUserGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityFieldUserGroupsApi' do
    it 'should create an instance of SecurityFieldUserGroupsApi' do
      expect(@api_instance).to be_instance_of(Vba::SecurityFieldUserGroupsApi)
    end
  end

  # unit tests for create_security_field_user_group
  # Create SecurityFieldUserGroup
  # Creates a new SecurityFieldUserGroup
  # @param vbasoftware_database Target database
  # @param security_field_user_group 
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldUserGroupVBAResponse]
  describe 'create_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_security_field_user_group
  # Delete SecurityFieldUserGroup
  # Deletes an SecurityFieldUserGroup
  # @param vbasoftware_database Target database
  # @param security_field_user_group_key SecurityFieldUserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_security_field_user_group
  # Get SecurityFieldUserGroup
  # Gets SecurityFieldUserGroup
  # @param vbasoftware_database Target database
  # @param security_field_user_group_key SecurityFieldUserGroup Key
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldUserGroupVBAResponse]
  describe 'get_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_security_field_user_group
  # List SecurityFieldUserGroup
  # Lists all SecurityFieldUserGroup
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [SecurityFieldUserGroupListVBAResponse]
  describe 'list_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_security_field_user_group
  # Create or Update Batch SecurityFieldUserGroup
  # Create or Update multiple SecurityFieldUserGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param security_field_user_group 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_security_field_user_group
  # Update SecurityFieldUserGroup
  # Updates a specific SecurityFieldUserGroup.
  # @param vbasoftware_database Target database
  # @param security_field_user_group_key SecurityFieldUserGroup Key
  # @param security_field_user_group 
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldUserGroupVBAResponse]
  describe 'update_security_field_user_group test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
