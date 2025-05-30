=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanBenefitCascadesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanBenefitCascadesApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanBenefitCascadesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanBenefitCascadesApi' do
    it 'should create an instance of PlanBenefitCascadesApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanBenefitCascadesApi)
    end
  end

  # unit tests for create_plan_benefit_cascade
  # Create PlanBenefitCascade
  # Creates a new PlanBenefitCascade
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param parent_benefit_code Parent Benefit Code
  # @param cascade_benefit_code 
  # @param plan_benefit_cascade 
  # @param [Hash] opts the optional parameters
  # @return [PlanBenefitCascadeVBAResponse]
  describe 'create_plan_benefit_cascade test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_benefit_cascade
  # Delete PlanBenefitCascade
  # Deletes an PlanBenefitCascade
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param parent_benefit_code Parent Benefit Code
  # @param cascade_benefit_code Cascade Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_benefit_cascade test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_benefit_cascade
  # Get PlanBenefitCascade
  # Gets PlanBenefitCascade
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param parent_benefit_code Parent Benefit Code
  # @param cascade_benefit_code Cascade Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [PlanBenefitCascadeVBAResponse]
  describe 'get_plan_benefit_cascade test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_benefit_cascade
  # List PlanBenefitCascade
  # Lists all PlanBenefitCascade for the given planID
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [PlanBenefitCascadeListVBAResponse]
  describe 'list_plan_benefit_cascade test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_benefit_cascade
  # Create or Update Batch PlanBenefitCascade
  # Create or Update multiple PlanBenefitCascade at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param parent_benefit_code Parent Benefit Code
  # @param plan_benefit_cascade 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_benefit_cascade test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
