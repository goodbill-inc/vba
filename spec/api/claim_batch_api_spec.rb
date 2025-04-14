=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimBatchApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimBatchApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimBatchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimBatchApi' do
    it 'should create an instance of ClaimBatchApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimBatchApi)
    end
  end

  # unit tests for create_claim_batch
  # Create ClaimBatch
  # Creates a new ClaimBatch
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param claim_batch 
  # @param [Hash] opts the optional parameters
  # @return [ClaimBatchVBAResponse]
  describe 'create_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_batch
  # Delete ClaimBatch
  # Deletes an ClaimBatch
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for full_delete_claim_batch
  # Full Delete ClaimBatch
  # Deletes an ClaimBatch record along with all associated processing needed as a result of that delete.
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @option opts [String] :claim_status_category_code Claim Status Category Code
  # @option opts [String] :claim_status_code Claim Status Code
  # @return [nil]
  describe 'full_delete_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_batch
  # Get ClaimBatch
  # Gets ClaimBatch
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param [Hash] opts the optional parameters
  # @return [ClaimBatchVBAResponse]
  describe 'get_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_batch
  # List ClaimBatch
  # Lists all ClaimBatch for the given batchNumber
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimBatchListVBAResponse]
  describe 'list_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_batch
  # Create or Update Batch ClaimBatch
  # Create or Update multiple ClaimBatch at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param claim_batch 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_batch
  # Update ClaimBatch
  # Updates a specific ClaimBatch.
  # @param vbasoftware_database Target database
  # @param batch_number Batch Number
  # @param batch_claim Batch Claim
  # @param claim_batch 
  # @param [Hash] opts the optional parameters
  # @return [ClaimBatchVBAResponse]
  describe 'update_claim_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
