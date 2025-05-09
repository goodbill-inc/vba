=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::APCWeightsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'APCWeightsApi' do
  before do
    # run before each test
    @api_instance = Vba::APCWeightsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APCWeightsApi' do
    it 'should create an instance of APCWeightsApi' do
      expect(@api_instance).to be_instance_of(Vba::APCWeightsApi)
    end
  end

  # unit tests for create_apc_weight
  # Create APCWeight
  # Creates a new APCWeight
  # @param vbasoftware_database Target database
  # @param apc_weight 
  # @param [Hash] opts the optional parameters
  # @return [APCWeightVBAResponse]
  describe 'create_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_apc_weight
  # Delete APCWeight
  # Deletes an APCWeight
  # @param vbasoftware_database Target database
  # @param apc_schedule APC Schedule
  # @param apc_code APC Code
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_apc_weight
  # Get APCWeight
  # Gets APCWeight
  # @param vbasoftware_database Target database
  # @param apc_schedule APC Schedule
  # @param apc_code APC Code
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [APCWeightVBAResponse]
  describe 'get_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_apc_weight
  # List APCWeight
  # Lists all APCWeight for the given apcSchedule and apcCode
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :apc_schedule APC Schedule
  # @option opts [String] :apc_code APC Code
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [APCWeightListVBAResponse]
  describe 'list_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_apc_weight
  # Update APCWeight
  # Updates a specific APCWeight.
  # @param vbasoftware_database Target database
  # @param apc_schedule APC Schedule
  # @param apc_code APC Code
  # @param effective_date Effective Date
  # @param apc_weight 
  # @param [Hash] opts the optional parameters
  # @return [APCWeightVBAResponse]
  describe 'update_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_apc_weight
  # Create or Update Batch APCWeight
  # Create or Update multiple APCWeight at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param apc_weight 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_apc_weight test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
