=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberBeneficiaryPlansApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberBeneficiaryPlansApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberBeneficiaryPlansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberBeneficiaryPlansApi' do
    it 'should create an instance of MemberBeneficiaryPlansApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberBeneficiaryPlansApi)
    end
  end

  # unit tests for create_member_beneficiary_plan
  # Create MemberBeneficiaryPlan
  # Creates a new MemberBeneficiaryPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param member_beneficiary_plan 
  # @param [Hash] opts the optional parameters
  # @return [MemberBeneficiaryPlanVBAResponse]
  describe 'create_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_beneficiary_plan
  # Delete MemberBeneficiaryPlan
  # Deletes an MemberBeneficiaryPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_beneficiary_plan
  # Get MemberBeneficiaryPlan
  # Gets MemberBeneficiaryPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [MemberBeneficiaryPlanVBAResponse]
  describe 'get_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_beneficiary_plan
  # List MemberBeneficiaryPlan
  # Lists all MemberBeneficiaryPlan for the given subscriberID and memberSeq and beneficiaryID
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberBeneficiaryPlanListVBAResponse]
  describe 'list_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_beneficiary_plan
  # Create or Update Batch MemberBeneficiaryPlan
  # Create or Update multiple MemberBeneficiaryPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param member_beneficiary_plan 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_beneficiary_plan
  # Update MemberBeneficiaryPlan
  # Updates a specific MemberBeneficiaryPlan.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param beneficiary_id Beneficiary ID
  # @param plan_id Plan ID
  # @param member_beneficiary_plan 
  # @param [Hash] opts the optional parameters
  # @return [MemberBeneficiaryPlanVBAResponse]
  describe 'update_member_beneficiary_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
