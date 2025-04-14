=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::Context4HealthCostContainmentExCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Context4HealthCostContainmentExCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::Context4HealthCostContainmentExCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Context4HealthCostContainmentExCodesApi' do
    it 'should create an instance of Context4HealthCostContainmentExCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::Context4HealthCostContainmentExCodesApi)
    end
  end

  # unit tests for create_cost_contain_context4_ex_code
  # Create CostContainContext4ExCode
  # Creates a new CostContainContext4ExCode
  # @param vbasoftware_database Target database
  # @param cost_contain_context4_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [CostContainContext4ExCodeVBAResponse]
  describe 'create_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cost_contain_context4_ex_code
  # Delete CostContainContext4ExCode
  # Deletes an CostContainContext4ExCode
  # @param vbasoftware_database Target database
  # @param ex_code_key ExCode Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cost_contain_context4_ex_code
  # Get CostContainContext4ExCode
  # Gets CostContainContext4ExCode
  # @param vbasoftware_database Target database
  # @param ex_code_key ExCode Key
  # @param [Hash] opts the optional parameters
  # @return [CostContainContext4ExCodeVBAResponse]
  describe 'get_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cost_contain_context4_ex_code
  # List CostContainContext4ExCode
  # Lists all CostContainContext4ExCode
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CostContainContext4ExCodeListVBAResponse]
  describe 'list_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_cost_contain_context4_ex_code
  # Create or Update Batch CostContainContext4ExCode
  # Create or Update multiple CostContainContext4ExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param cost_contain_context4_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cost_contain_context4_ex_code
  # Update CostContainContext4ExCode
  # Updates a specific CostContainContext4ExCode.
  # @param vbasoftware_database Target database
  # @param ex_code_key ExCode Key
  # @param cost_contain_context4_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [CostContainContext4ExCodeVBAResponse]
  describe 'update_cost_contain_context4_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
