=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanTypesApi' do
    it 'should create an instance of PlanTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanTypesApi)
    end
  end

  # unit tests for create_plan_type
  # Create PlanType
  # Creates a new PlanType
  # @param vbasoftware_database Target database
  # @param plan_type 
  # @param [Hash] opts the optional parameters
  # @return [PlanTypeVBAResponse]
  describe 'create_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_type
  # Delete PlanType
  # Deletes an PlanType
  # @param vbasoftware_database Target database
  # @param plan_type Plan Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_type
  # Get PlanType
  # Gets PlanType
  # @param vbasoftware_database Target database
  # @param plan_type Plan Type
  # @param [Hash] opts the optional parameters
  # @return [PlanTypeVBAResponse]
  describe 'get_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_type
  # List PlanType
  # Lists all PlanType 
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [PlanTypeListVBAResponse]
  describe 'list_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_type
  # Create or Update Batch PlanType
  # Create or Update multiple PlanType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan_type
  # Update PlanType
  # Updates a specific PlanType.
  # @param vbasoftware_database Target database
  # @param plan_type Plan Type
  # @param plan_type2 
  # @param [Hash] opts the optional parameters
  # @return [PlanTypeVBAResponse]
  describe 'update_plan_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
