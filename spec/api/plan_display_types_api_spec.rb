=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanDisplayTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanDisplayTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanDisplayTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanDisplayTypesApi' do
    it 'should create an instance of PlanDisplayTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanDisplayTypesApi)
    end
  end

  # unit tests for create_plan_display_type
  # Create PlanDisplayType
  # Creates a new PlanDisplayType
  # @param vbasoftware_database Target database
  # @param plan_display_type 
  # @param [Hash] opts the optional parameters
  # @return [PlanDisplayTypeVBAResponse]
  describe 'create_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_display_type
  # Delete PlanDisplayType
  # Deletes an PlanDisplayType
  # @param vbasoftware_database Target database
  # @param display_type Display Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_display_type
  # Get PlanDisplayType
  # Gets PlanDisplayType
  # @param vbasoftware_database Target database
  # @param display_type Display Type
  # @param [Hash] opts the optional parameters
  # @return [PlanDisplayTypeVBAResponse]
  describe 'get_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_display_type
  # List PlanDisplayType
  # Lists all PlanDisplayType 
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @return [PlanDisplayTypeListVBAResponse]
  describe 'list_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_display_type
  # Create or Update Batch PlanDisplayType
  # Create or Update multiple PlanDisplayType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_display_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan_display_type
  # Update PlanDisplayType
  # Updates a specific PlanDisplayType.
  # @param vbasoftware_database Target database
  # @param display_type Display Type
  # @param plan_display_type 
  # @param [Hash] opts the optional parameters
  # @return [PlanDisplayTypeVBAResponse]
  describe 'update_plan_display_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
