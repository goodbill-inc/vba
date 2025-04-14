=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::GroupNetworkCriteriasApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupNetworkCriteriasApi' do
  before do
    # run before each test
    @api_instance = Vba::GroupNetworkCriteriasApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupNetworkCriteriasApi' do
    it 'should create an instance of GroupNetworkCriteriasApi' do
      expect(@api_instance).to be_instance_of(Vba::GroupNetworkCriteriasApi)
    end
  end

  # unit tests for create_group_network_criteria
  # Create GroupNetworkCriteria
  # Creates a new GroupNetworkCriteria
  # @param vbasoftware_database Target database
  # @param group_network_criteria 
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkCriteriaVBAResponse]
  describe 'create_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_group_network_criteria
  # Delete GroupNetworkCriteria
  # Deletes an GroupNetworkCriteria
  # @param vbasoftware_database Target database
  # @param group_network_criteria_key GroupNetworkCriteria Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_network_criteria
  # Get GroupNetworkCriteria
  # Gets GroupNetworkCriteria
  # @param vbasoftware_database Target database
  # @param group_network_criteria_key GroupNetworkCriteria Key
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkCriteriaVBAResponse]
  describe 'get_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_network_criteria
  # List GroupNetworkCriteria
  # Retrieves a paginated list of GroupNetworkCriteria with optional sorting and filtering by Group_ID and Division_ID.
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [String] :group_id Optional filter for Group_ID.
  # @option opts [String] :division_id Optional filter for Division_ID.
  # @return [GroupNetworkCriteriaListVBAResponse]
  describe 'list_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_group_network_criteria
  # Create or Update Batch GroupNetworkCriteria
  # Create or Update multiple GroupNetworkCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param group_network_criteria 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_group_network_criteria
  # Update GroupNetworkCriteria
  # Updates a specific GroupNetworkCriteria.
  # @param vbasoftware_database Target database
  # @param group_network_criteria_key GroupNetworkCriteria Key
  # @param group_network_criteria 
  # @param [Hash] opts the optional parameters
  # @return [GroupNetworkCriteriaVBAResponse]
  describe 'update_group_network_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
