=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::WorkflowUsersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WorkflowUsersApi' do
  before do
    # run before each test
    @api_instance = Vba::WorkflowUsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowUsersApi' do
    it 'should create an instance of WorkflowUsersApi' do
      expect(@api_instance).to be_instance_of(Vba::WorkflowUsersApi)
    end
  end

  # unit tests for create_workflow_user
  # Create WorkflowUser
  # Creates a new WorkflowUser
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param workflow_user 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowUserVBAResponse]
  describe 'create_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_workflow_user
  # Delete WorkflowUser
  # Deletes an WorkflowUser
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_workflow_user
  # Get WorkflowUser
  # Gets WorkflowUser
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [WorkflowUserVBAResponse]
  describe 'get_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_workflow_user
  # List WorkflowUser
  # Lists all WorkflowUser for the given workflowKey
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [WorkflowUserListVBAResponse]
  describe 'list_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_workflow_user
  # Create or Update Batch WorkflowUser
  # Create or Update multiple WorkflowUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param workflow_user 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_workflow_user
  # Update WorkflowUser
  # Updates a specific WorkflowUser.
  # @param vbasoftware_database Target database
  # @param workflow_key Workflow Key
  # @param user_id User ID
  # @param workflow_user 
  # @param [Hash] opts the optional parameters
  # @return [WorkflowUserVBAResponse]
  describe 'update_workflow_user test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
