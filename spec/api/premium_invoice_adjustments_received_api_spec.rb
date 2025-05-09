=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PremiumInvoiceAdjustmentsReceivedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PremiumInvoiceAdjustmentsReceivedApi' do
  before do
    # run before each test
    @api_instance = Vba::PremiumInvoiceAdjustmentsReceivedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PremiumInvoiceAdjustmentsReceivedApi' do
    it 'should create an instance of PremiumInvoiceAdjustmentsReceivedApi' do
      expect(@api_instance).to be_instance_of(Vba::PremiumInvoiceAdjustmentsReceivedApi)
    end
  end

  # unit tests for create_prem_invoice_adj_received
  # Create PremInvoiceAdjReceived
  # Creates a new PremInvoiceAdjReceived
  # @param vbasoftware_database Target database
  # @param prem_invoice_adj_received 
  # @param [Hash] opts the optional parameters
  # @return [PremInvoiceAdjReceivedVBAResponse]
  describe 'create_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_prem_invoice_adj_received
  # Delete PremInvoiceAdjReceived
  # Deletes an PremInvoiceAdjReceived
  # @param vbasoftware_database Target database
  # @param prem_invoice_adj_received_key PremInvoiceAdjReceived Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_prem_invoice_adj_received
  # Get PremInvoiceAdjReceived
  # Gets PremInvoiceAdjReceived
  # @param vbasoftware_database Target database
  # @param prem_invoice_adj_received_key PremInvoiceAdjReceived Key
  # @param [Hash] opts the optional parameters
  # @return [PremInvoiceAdjReceivedVBAResponse]
  describe 'get_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_prem_invoice_adj_received
  # List PremInvoiceAdjReceived
  # Lists all PremInvoiceAdjReceived
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PremInvoiceAdjReceivedListVBAResponse]
  describe 'list_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_prem_invoice_adj_received
  # Create or Update Batch PremInvoiceAdjReceived
  # Create or Update multiple PremInvoiceAdjReceived at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param prem_invoice_adj_received 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_prem_invoice_adj_received
  # Update PremInvoiceAdjReceived
  # Updates a specific PremInvoiceAdjReceived.
  # @param vbasoftware_database Target database
  # @param prem_invoice_adj_received_key PremInvoiceAdjReceived Key
  # @param prem_invoice_adj_received 
  # @param [Hash] opts the optional parameters
  # @return [PremInvoiceAdjReceivedVBAResponse]
  describe 'update_prem_invoice_adj_received test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
