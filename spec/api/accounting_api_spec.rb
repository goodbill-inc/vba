=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::AccountingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountingApi' do
  before do
    # run before each test
    @api_instance = Vba::AccountingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountingApi' do
    it 'should create an instance of AccountingApi' do
      expect(@api_instance).to be_instance_of(Vba::AccountingApi)
    end
  end

  # unit tests for accounting_fund_request
  # Claim Account Funding
  # Submit a list of Payor/Account information to be funded based on configured parameters.  Returns whether there are invalid entries in your list that were skipped during processing.
  # @param vbasoftware_database Target database
  # @param fundaccountbalancelist 
  # @param [Hash] opts the optional parameters
  # @return [BooleanVBAResponse]
  describe 'accounting_fund_request test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for claim_refund
  # Claim Refund
  # Process a Claim Refund creating the necessary Backout and Reentry claims and adding Claim Reference values.
  # @param vbasoftware_database Target database
  # @param funding_process_claim_refund 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'claim_refund test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for mass_update_claim_funded_status
  # Mass Update Claim Funded Status
  # Pass in a list of claims and what Claim_Funded_Status to update that claim to and have it updated in mass without iterating through claim records.
  # @param vbasoftware_database Target database
  # @param vba_update_claim_funded_status 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'mass_update_claim_funded_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
