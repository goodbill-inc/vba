=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceContractTransactionReimbursementsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceContractTransactionReimbursementsApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceContractTransactionReimbursementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceContractTransactionReimbursementsApi' do
    it 'should create an instance of ReinsuranceContractTransactionReimbursementsApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceContractTransactionReimbursementsApi)
    end
  end

  # unit tests for create_reins_contract_trans_reimburse
  # Create ReinsContractTransReimburse
  # Creates a new ReinsContractTransReimburse
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param reins_contract_trans_reimburse 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransReimburseVBAResponse]
  describe 'create_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_contract_trans_reimburse
  # Delete ReinsContractTransReimburse
  # Deletes an ReinsContractTransReimburse
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param reins_contract_trans_reimburse_key ReinsContractTransReimburse Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_contract_trans_reimburse
  # Get ReinsContractTransReimburse
  # Gets ReinsContractTransReimburse
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param reins_contract_trans_reimburse_key ReinsContractTransReimburse Key
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransReimburseVBAResponse]
  describe 'get_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_contract_trans_reimburse
  # List ReinsContractTransReimburse
  # Lists all ReinsContractTransReimburse for the given reinsContractTransKey
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ReinsContractTransReimburseListVBAResponse]
  describe 'list_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_contract_trans_reimburse
  # Create or Update Batch ReinsContractTransReimburse
  # Create or Update multiple ReinsContractTransReimburse at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param reins_contract_trans_reimburse 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_reins_contract_trans_reimburse
  # Update ReinsContractTransReimburse
  # Updates a specific ReinsContractTransReimburse.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_contract_trans_key ReinsContractTrans Key
  # @param reins_contract_trans_reimburse_key ReinsContractTransReimburse Key
  # @param reins_contract_trans_reimburse 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractTransReimburseVBAResponse]
  describe 'update_reins_contract_trans_reimburse test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
