=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PlanBenefitProceduresApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PlanBenefitProceduresApi' do
  before do
    # run before each test
    @api_instance = Vba::PlanBenefitProceduresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PlanBenefitProceduresApi' do
    it 'should create an instance of PlanBenefitProceduresApi' do
      expect(@api_instance).to be_instance_of(Vba::PlanBenefitProceduresApi)
    end
  end

  # unit tests for create_plan_ben_code_proc_code
  # Create PlanBenCodeProcCode
  # Creates a new PlanBenCodeProcCode
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param plan_ben_code_proc_code 
  # @param [Hash] opts the optional parameters
  # @return [PlanBenCodeProcCodeVBAResponse]
  describe 'create_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_plan_ben_code_proc_code
  # Delete PlanBenCodeProcCode
  # Deletes an PlanBenCodeProcCode
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_plan_ben_code_proc_code
  # Get PlanBenCodeProcCode
  # Gets PlanBenCodeProcCode
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [PlanBenCodeProcCodeVBAResponse]
  describe 'get_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_plan_ben_code_proc_code
  # List PlanBenCodeProcCode
  # Lists all PlanBenCodeProcCode for the given planID and benefitCode
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [PlanBenCodeProcCodeListVBAResponse]
  describe 'list_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_plan_ben_code_proc_code
  # Create or Update Batch PlanBenCodeProcCode
  # Create or Update multiple PlanBenCodeProcCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param plan_ben_code_proc_code 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_plan_ben_code_proc_code
  # Update PlanBenCodeProcCode
  # Updates a specific PlanBenCodeProcCode.
  # @param vbasoftware_database Target database
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param from_procedure From Procedure
  # @param plan_ben_code_proc_code 
  # @param [Hash] opts the optional parameters
  # @return [PlanBenCodeProcCodeVBAResponse]
  describe 'update_plan_ben_code_proc_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
