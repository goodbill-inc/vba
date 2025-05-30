=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CasePrioritiesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CasePrioritiesApi' do
  before do
    # run before each test
    @api_instance = Vba::CasePrioritiesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CasePrioritiesApi' do
    it 'should create an instance of CasePrioritiesApi' do
      expect(@api_instance).to be_instance_of(Vba::CasePrioritiesApi)
    end
  end

  # unit tests for create_case_priority
  # Create CasePriority
  # Creates a new CasePriority
  # @param vbasoftware_database Target database
  # @param case_priority 
  # @param [Hash] opts the optional parameters
  # @return [CasePriorityVBAResponse]
  describe 'create_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_case_priority
  # Delete CasePriority
  # Deletes an CasePriority
  # @param vbasoftware_database Target database
  # @param case_priority Case Priority
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_case_priority
  # Get CasePriority
  # Gets CasePriority
  # @param vbasoftware_database Target database
  # @param case_priority Case Priority
  # @param [Hash] opts the optional parameters
  # @return [CasePriorityVBAResponse]
  describe 'get_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_case_priority
  # List CasePriority
  # Lists all CasePriority
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CasePriorityListVBAResponse]
  describe 'list_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_case_priority
  # Create or Update Batch CasePriority
  # Create or Update multiple CasePriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param case_priority 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_case_priority
  # Update CasePriority
  # Updates a specific CasePriority.
  # @param vbasoftware_database Target database
  # @param case_priority Case Priority
  # @param case_priority2 
  # @param [Hash] opts the optional parameters
  # @return [CasePriorityVBAResponse]
  describe 'update_case_priority test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
