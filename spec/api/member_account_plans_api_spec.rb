=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberAccountPlansApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberAccountPlansApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberAccountPlansApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberAccountPlansApi' do
    it 'should create an instance of MemberAccountPlansApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberAccountPlansApi)
    end
  end

  # unit tests for create_member_account_plan
  # Create MemberAccountPlan
  # Creates a new MemberAccountPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param member_account_plan 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanVBAResponse]
  describe 'create_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_account_plan
  # Delete MemberAccountPlan
  # Deletes an MemberAccountPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_account_plan
  # Get MemberAccountPlan
  # Gets MemberAccountPlan
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanVBAResponse]
  describe 'get_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_account_plan
  # List MemberAccountPlan
  # Lists all MemberAccountPlan for the given memberAccountKey
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberAccountPlanListVBAResponse]
  describe 'list_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_account_plan
  # Create or Update Batch MemberAccountPlan
  # Create or Update multiple MemberAccountPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param member_account_plan 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_account_plan
  # Update MemberAccountPlan
  # Updates a specific MemberAccountPlan.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param member_account_plan 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanVBAResponse]
  describe 'update_member_account_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
