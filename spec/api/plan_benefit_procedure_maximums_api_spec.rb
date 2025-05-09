=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanBenefitProcedureMaximumsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanBenefitProcedureMaximumsApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanBenefitProcedureMaximumsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanBenefitProcedureMaximumsApi' do
    it 'should create an instance of PlanBenefitProcedureMaximumsApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanBenefitProcedureMaximumsApi)
    end
  end

  # unit tests for create_plan_maximum_procedure
  # Create PlanMaximumProcedure
  # Creates a new PlanMaximumProcedure
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param plan_maximum_procedure 
  # @param [Hash] opts the optional parameters
  # @return [PlanMaximumProcedureVBAResponse]
  describe 'create_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_maximum_procedure
  # Delete PlanMaximumProcedure
  # Deletes an PlanMaximumProcedure
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_maximum_procedure
  # Get PlanMaximumProcedure
  # Gets PlanMaximumProcedure
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [PlanMaximumProcedureVBAResponse]
  describe 'get_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_maximum_procedure
  # List PlanMaximumProcedure
  # Lists all PlanMaximumProcedure for the given planID and benefitCode and fromProcedure
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param [Hash] opts the optional parameters
  # @return [PlanMaximumProcedureListVBAResponse]
  describe 'list_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_maximum_procedure
  # Create or Update Batch PlanMaximumProcedure
  # Create or Update multiple PlanMaximumProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param plan_maximum_procedure 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan_maximum_procedure
  # Update PlanMaximumProcedure
  # Updates a specific PlanMaximumProcedure.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param max_id Max ID
  # @param from_procedure From Procedure
  # @param plan_maximum_procedure 
  # @param [Hash] opts the optional parameters
  # @return [PlanMaximumProcedureVBAResponse]
  describe 'update_plan_maximum_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
