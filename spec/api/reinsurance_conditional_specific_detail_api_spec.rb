=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceConditionalSpecificDetailApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceConditionalSpecificDetailApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceConditionalSpecificDetailApi' do
    it 'should create an instance of ReinsuranceConditionalSpecificDetailApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceConditionalSpecificDetailApi)
    end
  end

  # unit tests for create_reins_contract_conditional_specific_detail
  # Create ReinsContractConditionalSpecificDetail
  # Creates a new ReinsContractConditionalSpecificDetail
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param reins_contract_conditional_specific_detail 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractConditionalSpecificDetailVBAResponse]
  describe 'create_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_contract_conditional_specific_detail
  # Delete ReinsContractConditionalSpecificDetail
  # Deletes an ReinsContractConditionalSpecificDetail
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param reins_contract_conditional_specific_detail_key ReinsContractConditionalSpecificDetail Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_contract_conditional_specific_detail
  # Get ReinsContractConditionalSpecificDetail
  # Gets ReinsContractConditionalSpecificDetail
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param reins_contract_conditional_specific_detail_key ReinsContractConditionalSpecificDetail Key
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractConditionalSpecificDetailVBAResponse]
  describe 'get_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_contract_conditional_specific_detail
  # List ReinsContractConditionalSpecificDetail
  # Lists all ReinsContractConditionalSpecificDetail for the given reinsContractConditionalSpecificKey
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [ReinsContractConditionalSpecificDetailListVBAResponse]
  describe 'list_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_contract_conditional_specific_detail
  # Create or Update Batch ReinsContractConditionalSpecificDetail
  # Create or Update multiple ReinsContractConditionalSpecificDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param reins_contract_conditional_specific_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_reins_contract_conditional_specific_detail
  # Update ReinsContractConditionalSpecificDetail
  # Updates a specific ReinsContractConditionalSpecificDetail.
  # @param vbasoftware_database Target database
  # @param reins_contract_conditional_specific_key ReinsContractConditionalSpecific Key
  # @param reins_contract_conditional_specific_detail_key ReinsContractConditionalSpecificDetail Key
  # @param reins_contract_conditional_specific_detail 
  # @param [Hash] opts the optional parameters
  # @return [ReinsContractConditionalSpecificDetailVBAResponse]
  describe 'update_reins_contract_conditional_specific_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
