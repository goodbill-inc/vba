=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AdvReinsuranceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdvReinsuranceApi' do
  before do
    # run before each test
    @api_instance = Vba::AdvReinsuranceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdvReinsuranceApi' do
    it 'should create an instance of AdvReinsuranceApi' do
      expect(@api_instance).to be_instance_of(Vba::AdvReinsuranceApi)
    end
  end

  # unit tests for add_contract_from_existing
  # Copy and existing ReinsContract to a new ReinsContract
  # Copy everything from an existing contract to a new Contract.
  # @param vbasoftware_database Target database
  # @param reins_service_add_from_existing 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractVBAResponse]
  describe 'add_contract_from_existing test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_contract_from_template
  # Add ReinsContract from a Template ReinsContract
  # Take the information from a template and apply it to one or more new contracts based on that template contract.
  # @param vbasoftware_database Target database
  # @param reins_service_add_from_template 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractVBAResponse]
  describe 'add_contract_from_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for apply_agg_spec_ded_reins_contract_trans
  # Apply Agg. Spec. Deductible ReinsContractTrans
  # Using this option will reset all aggregate deductible applied amounts for claims on this transaction. Aggregate Deductible amount is then applied to claims in service date order until Aggregate Specific Deductible is met.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'apply_agg_spec_ded_reins_contract_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for apply_ded_reins_contract_trans
  # Apply Deductible ReinsContractTrans
  # This option will reset all deductible applied amounts for claims on this transaction.  Specific or Lasered Deductible amount is then applied to claims in service date order until deductible is met.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'apply_ded_reins_contract_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for apply_reimbursement_reins_contract_trans
  # Apply Reimbursement ReinsContractTrans
  # Using this option will reset all reimbursement applied amounts for claims on this transaction. Received Reimbursement amount is then applied to claims in service date order until reimbursement amount is used.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'apply_reimbursement_reins_contract_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for calculate_reins_contract_trans
  # Calculate ReinsContractTrans
  # Based on information existing in the ReinsTrans records and the attached ReinsTransClaim records, calculate the header information and return result.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @return [VBAReinsContractTransAmountVBAResponse]
  describe 'calculate_reins_contract_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_reins_level_transaction
  # Generate Level Transactions for this Contract
  # Based on submitted information, generate reinsurance level transactions for this contract.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param [Hash] opts the optional parameters
  # @return [Int32VBAResponse]
  describe 'generate_reins_level_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_reins_transaction
  # Generate Transactions for this Contract
  # Based on submitted information, generate reinsurance transactions for this contract.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param auto_apply_deductible Auto Apply Deductible
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subscriber_id Subscriber ID
  # @option opts [String] :member_seq Member Sequence
  # @return [GenerateReinsTransactionVBAResponse]
  describe 'generate_reins_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_reins_contract_trans
  # Reset ReinsContractTrans
  # For all claims attached to this Reinsurance Transaction, reset the various applied amounts (Reimbursed, Not Covered, etc.).
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'reset_reins_contract_trans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
