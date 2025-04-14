=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceContractTransactionClaimStatusesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceContractTransactionClaimStatusesApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceContractTransactionClaimStatusesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceContractTransactionClaimStatusesApi' do
    it 'should create an instance of ReinsuranceContractTransactionClaimStatusesApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceContractTransactionClaimStatusesApi)
    end
  end

  # unit tests for create_reins_contract_trans_claim_status
  # Create ReinsContractTransClaimStatus
  # Creates a new ReinsContractTransClaimStatus
  # @param vbasoftware_database Target database
  # @param reins_contract_trans_claim_status 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransClaimStatusVBAResponse]
  describe 'create_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_contract_trans_claim_status
  # Delete ReinsContractTransClaimStatus
  # Deletes an ReinsContractTransClaimStatus
  # @param vbasoftware_database Target database
  # @param claim_transaction_status ClaimTransaction Status
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_contract_trans_claim_status
  # Get ReinsContractTransClaimStatus
  # Gets ReinsContractTransClaimStatus
  # @param vbasoftware_database Target database
  # @param claim_transaction_status ClaimTransaction Status
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransClaimStatusVBAResponse]
  describe 'get_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_contract_trans_claim_status
  # List ReinsContractTransClaimStatus
  # Lists all ReinsContractTransClaimStatus
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ReinsContractTransClaimStatusListVBAResponse]
  describe 'list_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_contract_trans_claim_status
  # Create or Update Batch ReinsContractTransClaimStatus
  # Create or Update multiple ReinsContractTransClaimStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_trans_claim_status 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_reins_contract_trans_claim_status
  # Update ReinsContractTransClaimStatus
  # Updates a specific ReinsContractTransClaimStatus.
  # @param vbasoftware_database Target database
  # @param claim_transaction_status ClaimTransaction Status
  # @param reins_contract_trans_claim_status 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransClaimStatusVBAResponse]
  describe 'update_reins_contract_trans_claim_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
