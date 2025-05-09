=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SuspenseClaimsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SuspenseClaimsApi' do
  before do
    # run before each test
    @api_instance = Vba::SuspenseClaimsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SuspenseClaimsApi' do
    it 'should create an instance of SuspenseClaimsApi' do
      expect(@api_instance).to be_instance_of(Vba::SuspenseClaimsApi)
    end
  end

  # unit tests for create_suspense_claim
  # Create SuspenseClaim
  # Creates a new SuspenseClaim
  # @param vbasoftware_database Target database
  # @param suspense_claim 
  # @param [Hash] opts the optional parameters
  # @return [SuspenseClaimVBAResponse]
  describe 'create_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_suspense_claim
  # Delete SuspenseClaim
  # Deletes an SuspenseClaim
  # @param vbasoftware_database Target database
  # @param suspense_claim_key SuspenseClaim Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_suspense_claim
  # Get SuspenseClaim
  # Gets SuspenseClaim
  # @param vbasoftware_database Target database
  # @param suspense_claim_key SuspenseClaim Key
  # @param [Hash] opts the optional parameters
  # @return [SuspenseClaimVBAResponse]
  describe 'get_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_suspense_claim
  # List SuspenseClaim
  # Lists all SuspenseClaim
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SuspenseClaimListVBAResponse]
  describe 'list_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_suspense_claim
  # Create or Update Batch SuspenseClaim
  # Create or Update multiple SuspenseClaim at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param suspense_claim 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_suspense_claim
  # Update SuspenseClaim
  # Updates a specific SuspenseClaim.
  # @param vbasoftware_database Target database
  # @param suspense_claim_key SuspenseClaim Key
  # @param suspense_claim 
  # @param [Hash] opts the optional parameters
  # @return [SuspenseClaimVBAResponse]
  describe 'update_suspense_claim test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
