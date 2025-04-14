=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimAuditAppealReasonsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimAuditAppealReasonsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimAuditAppealReasonsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimAuditAppealReasonsApi' do
    it 'should create an instance of ClaimAuditAppealReasonsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimAuditAppealReasonsApi)
    end
  end

  # unit tests for create_claim_audit_appeal_reason
  # Create ClaimAuditAppealReason
  # Creates a new ClaimAuditAppealReason
  # @param vbasoftware_database Target database
  # @param claim_audit_appeal_reason 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditAppealReasonVBAResponse]
  describe 'create_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_audit_appeal_reason
  # Delete ClaimAuditAppealReason
  # Deletes an ClaimAuditAppealReason
  # @param vbasoftware_database Target database
  # @param appeal_reason Appeal Reason
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_audit_appeal_reason
  # Get ClaimAuditAppealReason
  # Gets ClaimAuditAppealReason
  # @param vbasoftware_database Target database
  # @param appeal_reason Appeal Reason
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditAppealReasonVBAResponse]
  describe 'get_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_audit_appeal_reason
  # List ClaimAuditAppealReason
  # Lists all ClaimAuditAppealReason
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimAuditAppealReasonListVBAResponse]
  describe 'list_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_audit_appeal_reason
  # Create or Update Batch ClaimAuditAppealReason
  # Create or Update multiple ClaimAuditAppealReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_audit_appeal_reason 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_audit_appeal_reason
  # Update ClaimAuditAppealReason
  # Updates a specific ClaimAuditAppealReason.
  # @param vbasoftware_database Target database
  # @param appeal_reason Appeal Reason
  # @param claim_audit_appeal_reason 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAuditAppealReasonVBAResponse]
  describe 'update_claim_audit_appeal_reason test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
