=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimQueueProcessorsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimQueueProcessorsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimQueueProcessorsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimQueueProcessorsApi' do
    it 'should create an instance of ClaimQueueProcessorsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimQueueProcessorsApi)
    end
  end

  # unit tests for create_claim_queue_processor
  # Create ClaimQueueProcessor
  # Creates a new ClaimQueueProcessor
  # @param vbasoftware_database Target database
  # @param claim_queue_processor 
  # @param [Hash] opts the optional parameters
  # @return [ClaimQueueProcessorVBAResponse]
  describe 'create_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_queue_processor
  # Delete ClaimQueueProcessor
  # Deletes an ClaimQueueProcessor
  # @param vbasoftware_database Target database
  # @param claim_queue_processor_key ClaimQueueProcessor Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_queue_processor
  # Get ClaimQueueProcessor
  # Gets ClaimQueueProcessor
  # @param vbasoftware_database Target database
  # @param claim_queue_processor_key ClaimQueueProcessor Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimQueueProcessorVBAResponse]
  describe 'get_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_queue_processor
  # List ClaimQueueProcessor
  # Lists all ClaimQueueProcessor
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimQueueProcessorListVBAResponse]
  describe 'list_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_queue_processor
  # Create or Update Batch ClaimQueueProcessor
  # Create or Update multiple ClaimQueueProcessor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_queue_processor 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_queue_processor
  # Update ClaimQueueProcessor
  # Updates a specific ClaimQueueProcessor.
  # @param vbasoftware_database Target database
  # @param claim_queue_processor_key ClaimQueueProcessor Key
  # @param claim_queue_processor 
  # @param [Hash] opts the optional parameters
  # @return [ClaimQueueProcessorVBAResponse]
  describe 'update_claim_queue_processor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
