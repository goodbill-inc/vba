=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimInvoiceAdjustmentReceivedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimInvoiceAdjustmentReceivedApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimInvoiceAdjustmentReceivedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimInvoiceAdjustmentReceivedApi' do
    it 'should create an instance of ClaimInvoiceAdjustmentReceivedApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimInvoiceAdjustmentReceivedApi)
    end
  end

  # unit tests for create_claim_invoice_adjustment_received
  # Create ClaimInvoiceAdjustmentReceived
  # Creates a new ClaimInvoiceAdjustmentReceived
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_received 
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoiceAdjustmentReceivedVBAResponse]
  describe 'create_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_invoice_adjustment_received
  # Delete ClaimInvoiceAdjustmentReceived
  # Deletes an ClaimInvoiceAdjustmentReceived
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_received_key ClaimInvoiceAdjustmentReceived Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_invoice_adjustment_received
  # Get ClaimInvoiceAdjustmentReceived
  # Gets ClaimInvoiceAdjustmentReceived
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_received_key ClaimInvoiceAdjustmentReceived Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoiceAdjustmentReceivedVBAResponse]
  describe 'get_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_invoice_adjustment_received
  # List ClaimInvoiceAdjustmentReceived
  # Lists all ClaimInvoiceAdjustmentReceived for the given claimInvoiceAdjustmentKey
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_key ClaimInvoiceAdjustment Key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [ClaimInvoiceAdjustmentReceivedListVBAResponse]
  describe 'list_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_invoice_adjustment_received
  # Create or Update Batch ClaimInvoiceAdjustmentReceived
  # Create or Update multiple ClaimInvoiceAdjustmentReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_received 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_invoice_adjustment_received
  # Update ClaimInvoiceAdjustmentReceived
  # Updates a specific ClaimInvoiceAdjustmentReceived.
  # @param vbasoftware_database Target database
  # @param claim_invoice_adjustment_received_key ClaimInvoiceAdjustmentReceived Key
  # @param claim_invoice_adjustment_received 
  # @param [Hash] opts the optional parameters
  # @return [ClaimInvoiceAdjustmentReceivedVBAResponse]
  describe 'update_claim_invoice_adjustment_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
