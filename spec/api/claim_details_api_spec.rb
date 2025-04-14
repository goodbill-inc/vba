=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimDetailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimDetailsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimDetailsApi' do
    it 'should create an instance of ClaimDetailsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimDetailsApi)
    end
  end

  # unit tests for create_claim_detail
  # Create ClaimDetail
  # Creates a new ClaimDetail
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param claim_detail 
  # @param [Hash] opts the optional parameters
  # @return [ClaimDetailVBAResponse]
  describe 'create_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_detail
  # Delete ClaimDetail
  # Deletes an ClaimDetail
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param claim_seq Claim Seq
  # @param adjustment_seq Adjustment Seq
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_detail
  # Get ClaimDetail
  # Gets ClaimDetail
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param claim_seq Claim Seq
  # @param adjustment_seq Adjustment Seq
  # @param [Hash] opts the optional parameters
  # @return [ClaimDetailVBAResponse]
  describe 'get_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_detail
  # List ClaimDetail
  # Lists all ClaimDetail for the given claimNumber
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimDetailListVBAResponse]
  describe 'list_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_detail
  # Create or Update Batch ClaimDetail
  # Create or Update multiple ClaimDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param claim_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_detail
  # Update ClaimDetail
  # Updates a specific ClaimDetail.
  # @param vbasoftware_database Target database
  # @param claim_number Claim Number
  # @param claim_seq Claim Seq
  # @param adjustment_seq Adjustment Seq
  # @param claim_detail 
  # @param [Hash] opts the optional parameters
  # @return [ClaimDetailVBAResponse]
  describe 'update_claim_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
