=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberAccountPlanPaymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberAccountPlanPaymentsApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberAccountPlanPaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberAccountPlanPaymentsApi' do
    it 'should create an instance of MemberAccountPlanPaymentsApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberAccountPlanPaymentsApi)
    end
  end

  # unit tests for create_member_account_plan_payment
  # Create MemberAccountPlanPayment
  # Creates a new MemberAccountPlanPayment
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param member_account_plan_payment 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanPaymentVBAResponse]
  describe 'create_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_account_plan_payment
  # Delete MemberAccountPlanPayment
  # Deletes an MemberAccountPlanPayment
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param payment_key Payment Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_account_plan_payment
  # Get MemberAccountPlanPayment
  # Gets MemberAccountPlanPayment
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param payment_key Payment Key
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanPaymentVBAResponse]
  describe 'get_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_account_plan_payment
  # List MemberAccountPlanPayment
  # Lists all MemberAccountPlanPayment for the given memberAccountKey and planID
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberAccountPlanPaymentListVBAResponse]
  describe 'list_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_account_plan_payment
  # Create or Update Batch MemberAccountPlanPayment
  # Create or Update multiple MemberAccountPlanPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param member_account_plan_payment 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_account_plan_payment
  # Update MemberAccountPlanPayment
  # Updates a specific MemberAccountPlanPayment.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param plan_id Plan ID
  # @param payment_key Payment Key
  # @param member_account_plan_payment 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountPlanPaymentVBAResponse]
  describe 'update_member_account_plan_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
