=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FundingRequestClaimsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FundingRequestClaimsApi' do
  before do
    # run before each test
    @api_instance = Vba::FundingRequestClaimsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FundingRequestClaimsApi' do
    it 'should create an instance of FundingRequestClaimsApi' do
      expect(@api_instance).to be_instance_of(Vba::FundingRequestClaimsApi)
    end
  end

  # unit tests for create_funding_request_claim
  # Create FundingRequestClaim
  # Creates a new FundingRequestClaim
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param funding_request_claim 
  # @param [Hash] opts the optional parameters
  # @return [FundingRequestClaimVBAResponse]
  describe 'create_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_funding_request_claim
  # Delete FundingRequestClaim
  # Deletes an FundingRequestClaim
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_funding_request_claim
  # Get FundingRequestClaim
  # Gets FundingRequestClaim
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [FundingRequestClaimVBAResponse]
  describe 'get_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_funding_request_claim
  # List FundingRequestClaim
  # Lists all FundingRequestClaim for the given requestKey
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [FundingRequestClaimListVBAResponse]
  describe 'list_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_funding_request_claim_summary
  # List FundingRequestClaim Summary
  # Lists all FundingRequestClaim Summary for the given requestKey.  The Summary view has additional computed fields that are ot present on the FundingRequestClaim object.
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param [Hash] opts the optional parameters
  # @return [VBAFundingRequestClaimSummaryListVBAResponse]
  describe 'list_funding_request_claim_summary test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_funding_request_claim
  # Create or Update Batch FundingRequestClaim
  # Create or Update multiple FundingRequestClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param funding_request_claim 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_funding_request_claim
  # Update FundingRequestClaim
  # Updates a specific FundingRequestClaim.
  # @param vbasoftware_database Target database
  # @param request_key Request Key
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param funding_request_claim 
  # @param [Hash] opts the optional parameters
  # @return [FundingRequestClaimVBAResponse]
  describe 'update_funding_request_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
