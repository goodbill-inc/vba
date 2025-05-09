=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimAuditDetailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimAuditDetailsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimAuditDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimAuditDetailsApi' do
    it 'should create an instance of ClaimAuditDetailsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimAuditDetailsApi)
    end
  end

  # unit tests for create_claim_audit_detail
  # Create ClaimAuditDetail
  # Creates a new ClaimAuditDetail
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param claim_audit_detail 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditDetailVBAResponse]
  describe 'create_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_audit_detail
  # Delete ClaimAuditDetail
  # Deletes an ClaimAuditDetail
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param claim_audit_detail_key ClaimAuditDetail Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_audit_detail
  # Get ClaimAuditDetail
  # Gets ClaimAuditDetail
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param claim_audit_detail_key ClaimAuditDetail Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditDetailVBAResponse]
  describe 'get_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_audit_detail
  # List ClaimAuditDetail
  # Lists all ClaimAuditDetail for the given claimAuditKey
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimAuditDetailListVBAResponse]
  describe 'list_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_audit_detail
  # Create or Update Batch ClaimAuditDetail
  # Create or Update multiple ClaimAuditDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param claim_audit_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_audit_detail
  # Update ClaimAuditDetail
  # Updates a specific ClaimAuditDetail.
  # @param vbasoftware_database Target database
  # @param claim_audit_key ClaimAudit Key
  # @param claim_audit_detail_key ClaimAuditDetail Key
  # @param claim_audit_detail 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditDetailVBAResponse]
  describe 'update_claim_audit_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
