=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ReinsuranceDomesticClaimsCriteriaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReinsuranceDomesticClaimsCriteriaApi' do
  before do
    # run before each test
    @api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReinsuranceDomesticClaimsCriteriaApi' do
    it 'should create an instance of ReinsuranceDomesticClaimsCriteriaApi' do
      expect(@api_instance).to be_instance_of(Vba::ReinsuranceDomesticClaimsCriteriaApi)
    end
  end

  # unit tests for create_reins_domestic_claim_criteria
  # Create ReinsDomesticClaimCriteria
  # Creates a new ReinsDomesticClaimCriteria
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_domestic_claim_criteria 
  # @param [Hash] opts the optional parameters
  # @return [ReinsDomesticClaimCriteriaVBAResponse]
  describe 'create_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_reins_domestic_claim_criteria
  # Delete ReinsDomesticClaimCriteria
  # Deletes an ReinsDomesticClaimCriteria
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_domestic_claim_criteria_key ReinsDomesticClaimCriteria Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reins_domestic_claim_criteria
  # Get ReinsDomesticClaimCriteria
  # Gets ReinsDomesticClaimCriteria
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_domestic_claim_criteria_key ReinsDomesticClaimCriteria Key
  # @param [Hash] opts the optional parameters
  # @return [ReinsDomesticClaimCriteriaVBAResponse]
  describe 'get_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_reins_domestic_claim_criteria
  # List ReinsDomesticClaimCriteria
  # Lists all ReinsDomesticClaimCriteria for the given reinsContractKey
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [ReinsDomesticClaimCriteriaListVBAResponse]
  describe 'list_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_reins_domestic_claim_criteria
  # Create or Update Batch ReinsDomesticClaimCriteria
  # Create or Update multiple ReinsDomesticClaimCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_domestic_claim_criteria 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_reins_domestic_claim_criteria
  # Update ReinsDomesticClaimCriteria
  # Updates a specific ReinsDomesticClaimCriteria.
  # @param vbasoftware_database Target database
  # @param reins_contract_key ReinsContract Key
  # @param reins_domestic_claim_criteria_key ReinsDomesticClaimCriteria Key
  # @param reins_domestic_claim_criteria 
  # @param [Hash] opts the optional parameters
  # @return [ReinsDomesticClaimCriteriaVBAResponse]
  describe 'update_reins_domestic_claim_criteria test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
