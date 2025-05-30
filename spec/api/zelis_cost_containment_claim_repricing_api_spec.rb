=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ZelisCostContainmentClaimRepricingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ZelisCostContainmentClaimRepricingApi' do
  before do
    # run before each test
    @api_instance = Vba::ZelisCostContainmentClaimRepricingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZelisCostContainmentClaimRepricingApi' do
    it 'should create an instance of ZelisCostContainmentClaimRepricingApi' do
      expect(@api_instance).to be_instance_of(Vba::ZelisCostContainmentClaimRepricingApi)
    end
  end

  # unit tests for create_cost_contain_zelis_claim_reprice
  # Create CostContainZelisClaimReprice
  # Creates a new CostContainZelisClaimReprice
  # @param vbasoftware_database Target database
  # @param cost_contain_zelis_claim_reprice 
  # @param [Hash] opts the optional parameters
  # @return [CostContainZelisClaimRepriceVBAResponse]
  describe 'create_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cost_contain_zelis_claim_reprice
  # Delete CostContainZelisClaimReprice
  # Deletes an CostContainZelisClaimReprice
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cost_contain_zelis_claim_reprice
  # Get CostContainZelisClaimReprice
  # Gets CostContainZelisClaimReprice
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [CostContainZelisClaimRepriceVBAResponse]
  describe 'get_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cost_contain_zelis_claim_reprice
  # List CostContainZelisClaimReprice
  # Lists all CostContainZelisClaimReprice
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CostContainZelisClaimRepriceListVBAResponse]
  describe 'list_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_cost_contain_zelis_claim_reprice
  # Create or Update Batch CostContainZelisClaimReprice
  # Create or Update multiple CostContainZelisClaimReprice at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param cost_contain_zelis_claim_reprice 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cost_contain_zelis_claim_reprice
  # Update CostContainZelisClaimReprice
  # Updates a specific CostContainZelisClaimReprice.
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param cost_contain_zelis_claim_reprice 
  # @param [Hash] opts the optional parameters
  # @return [CostContainZelisClaimRepriceVBAResponse]
  describe 'update_cost_contain_zelis_claim_reprice test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
