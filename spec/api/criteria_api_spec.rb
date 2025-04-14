=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CriteriaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CriteriaApi' do
  before do
    # run before each test
    @api_instance = Vba::CriteriaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CriteriaApi' do
    it 'should create an instance of CriteriaApi' do
      expect(@api_instance).to be_instance_of(Vba::CriteriaApi)
    end
  end

  # unit tests for create_criteria
  # Create a search Criteria
  # Creates a new search Criteria.
  # @param vbasoftware_database Target database
  # @param criteria 
  # @param [Hash] opts the optional parameters
  # @return [CriteriaVBAResponse]
  describe 'create_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_or_update_batch_criteria
  # Create or Update Batch Criteria
  # Creates or Updates multiple Criteria.
  # @param vbasoftware_database Target database
  # @param criteria 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'create_or_update_batch_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_criteria
  # Delete Criteria
  # Deletes a Criteria
  # @param vbasoftware_database Target database
  # @param criteria_key Criteria Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_criteria
  # Get Criteria
  # Gets Criteria
  # @param vbasoftware_database Target database
  # @param criteria_key Criteria Key
  # @param [Hash] opts the optional parameters
  # @return [CriteriaVBAResponse]
  describe 'get_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_criteria_where_clause
  # Get this Criteria Where Clause
  # Helper function to take an existing list of Criteria Detail and merge it all together into a single WHERE Clause to be used with other services.
  # @param vbasoftware_database Target database
  # @param criteria_key Criteria Key
  # @param [Hash] opts the optional parameters
  # @return [StringVBAResponse]
  describe 'get_criteria_where_clause test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_criteria
  # List Criteria
  # List Criteria. Optional 
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search_config_id Search Config Id
  # @option opts [String] :criteria_user Criteria User
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CriteriaListVBAResponse]
  describe 'list_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_criteria
  # Update Criteria
  # Updates a specific Criteria.
  # @param vbasoftware_database Target database
  # @param criteria_key Criteria Key
  # @param criteria 
  # @param [Hash] opts the optional parameters
  # @return [CriteriaVBAResponse]
  describe 'update_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
