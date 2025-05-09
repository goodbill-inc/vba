=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SecurityGroupDivisionUsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityGroupDivisionUsersApi' do
  before do
    # run before each test
    @api_instance = Vba::SecurityGroupDivisionUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityGroupDivisionUsersApi' do
    it 'should create an instance of SecurityGroupDivisionUsersApi' do
      expect(@api_instance).to be_instance_of(Vba::SecurityGroupDivisionUsersApi)
    end
  end

  # unit tests for create_security_group_division_user
  # Create SecurityGroupDivisionUser
  # Creates a new SecurityGroupDivisionUser
  # @param vbasoftware_database Target database
  # @param security_group_division_user 
  # @param [Hash] opts the optional parameters
  # @return [SecurityGroupDivisionUserVBAResponse]
  describe 'create_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_security_group_division_user
  # Delete SecurityGroupDivisionUser
  # Deletes an SecurityGroupDivisionUser
  # @param vbasoftware_database Target database
  # @param security_group_division_user_key SecurityGroupDivisionUser Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_security_group_division_user
  # Get SecurityGroupDivisionUser
  # Gets SecurityGroupDivisionUser
  # @param vbasoftware_database Target database
  # @param security_group_division_user_key SecurityGroupDivisionUser Key
  # @param [Hash] opts the optional parameters
  # @return [SecurityGroupDivisionUserVBAResponse]
  describe 'get_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_security_group_division_user
  # List SecurityGroupDivisionUser
  # Lists all SecurityGroupDivisionUser with optional userID and groupID filters
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_id User ID Filter
  # @option opts [String] :group_id Group ID Filter
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SecurityGroupDivisionUserListVBAResponse]
  describe 'list_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_security_group_division_user
  # Create or Update Batch SecurityGroupDivisionUser
  # Create or Update multiple SecurityGroupDivisionUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param security_group_division_user 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_security_group_division_user
  # Update SecurityGroupDivisionUser
  # Updates a specific SecurityGroupDivisionUser.
  # @param vbasoftware_database Target database
  # @param security_group_division_user_key SecurityGroupDivisionUser Key
  # @param security_group_division_user 
  # @param [Hash] opts the optional parameters
  # @return [SecurityGroupDivisionUserVBAResponse]
  describe 'update_security_group_division_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
