=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimInvoicePaymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimInvoicePaymentsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimInvoicePaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimInvoicePaymentsApi' do
    it 'should create an instance of ClaimInvoicePaymentsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimInvoicePaymentsApi)
    end
  end

  # unit tests for create_claim_invoice_payment
  # Create ClaimInvoicePayment
  # Creates a new ClaimInvoicePayment
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param claim_invoice_payment 
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoicePaymentVBAResponse]
  describe 'create_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_invoice_payment
  # Delete ClaimInvoicePayment
  # Deletes an ClaimInvoicePayment
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param claim_payment_key ClaimPayment Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_invoice_payment
  # Get ClaimInvoicePayment
  # Gets ClaimInvoicePayment
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param claim_payment_key ClaimPayment Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoicePaymentVBAResponse]
  describe 'get_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_invoice_payment
  # List ClaimInvoicePayment
  # Lists all ClaimInvoicePayment for the given invoiceKey
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [ClaimInvoicePaymentListVBAResponse]
  describe 'list_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_invoice_payment
  # Create or Update Batch ClaimInvoicePayment
  # Create or Update multiple ClaimInvoicePayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param claim_invoice_payment 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_invoice_payment
  # Update ClaimInvoicePayment
  # Updates a specific ClaimInvoicePayment.
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param claim_payment_key ClaimPayment Key
  # @param claim_invoice_payment 
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoicePaymentVBAResponse]
  describe 'update_claim_invoice_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
