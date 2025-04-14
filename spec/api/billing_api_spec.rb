=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::BillingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BillingApi' do
  before do
    # run before each test
    @api_instance = Vba::BillingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BillingApi' do
    it 'should create an instance of BillingApi' do
      expect(@api_instance).to be_instance_of(Vba::BillingApi)
    end
  end

  # unit tests for billing_apply_payment_category
  # Billing Apply Payment Category
  # Using the ListPremApplyPaymentCategory Operation to get a list of payments and additional configuration, have On Accout and PremPayment information updated.
  # @param vbasoftware_database Target database
  # @param billing_apply_payment_config 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_apply_payment_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for billing_apply_payment_on_account_category
  # Billing Apply Payment On Account Category
  # Using the PremPaymentOnAccount List as a basis for configuration, have On Accout and PremPayment information updated.
  # @param vbasoftware_database Target database
  # @param billing_apply_payment_on_account_config 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_apply_payment_on_account_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for billing_auto_apply
  # Billing Auto-Apply
  # Auto Apply Payment based on specified configuration options.
  # @param vbasoftware_database Target database
  # @param billing_auto_apply_config 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_auto_apply test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for billing_refund
  # Billing Refund
  # Generate the necessary Billing adjustments for an Invoice refund and create a Distribution if needed.
  # @param vbasoftware_database Target database
  # @param billing_refund 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'billing_refund test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
