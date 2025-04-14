=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SubscriberPlanPoliciesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriberPlanPoliciesApi' do
  before do
    # run before each test
    @api_instance = Vba::SubscriberPlanPoliciesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriberPlanPoliciesApi' do
    it 'should create an instance of SubscriberPlanPoliciesApi' do
      expect(@api_instance).to be_instance_of(Vba::SubscriberPlanPoliciesApi)
    end
  end

  # unit tests for create_subscriber_plan_policy
  # Create SubscriberPlanPolicy
  # Creates a new SubscriberPlanPolicy
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param subscriber_plan_policy 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberPlanPolicyVBAResponse]
  describe 'create_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscriber_plan_policy
  # Delete SubscriberPlanPolicy
  # Deletes an SubscriberPlanPolicy
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param policy_number Policy Number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscriber_plan_policy
  # Get SubscriberPlanPolicy
  # Gets SubscriberPlanPolicy
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param policy_number Policy Number
  # @param [Hash] opts the optional parameters
  # @return [SubscriberPlanPolicyVBAResponse]
  describe 'get_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscriber_plan_policy
  # List SubscriberPlanPolicy
  # Lists all SubscriberPlanPolicy for the given subscriberID
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SubscriberPlanPolicyListVBAResponse]
  describe 'list_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for subscriber_surrender_policy
  # Subscriber Policy Surrender
  # Surrender an existing Policy under the Policy &amp; Forfeiture area.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param policy_number Policy Number
  # @param cash_value Cash Value
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'subscriber_surrender_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_subscriber_plan_policy
  # Create or Update Batch SubscriberPlanPolicy
  # Create or Update multiple SubscriberPlanPolicy at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Ssubscriber ID
  # @param subscriber_plan_policy 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscriber_plan_policy
  # Update SubscriberPlanPolicy
  # Updates a specific SubscriberPlanPolicy.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param plan_id Plan ID
  # @param benefit_code Benefit Code
  # @param policy_number Policy Number
  # @param subscriber_plan_policy 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberPlanPolicyVBAResponse]
  describe 'update_subscriber_plan_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
