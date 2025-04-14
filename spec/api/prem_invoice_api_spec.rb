=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PremInvoiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PremInvoiceApi' do
  before do
    # run before each test
    @api_instance = Vba::PremInvoiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PremInvoiceApi' do
    it 'should create an instance of PremInvoiceApi' do
      expect(@api_instance).to be_instance_of(Vba::PremInvoiceApi)
    end
  end

  # unit tests for update_prem_invoice_gateway_actuals
  # Update PremInvoiceSelfAdmin with Gateway Actuals
  # Updates the PremInvoiceSelfAdmin table with live data retrieved from VBAGateway
  # @param vbasoftware_database Target database
  # @param invoice_key Invoice Key
  # @param request_key Request Key
  # @param [Hash] opts the optional parameters
  # @return [PremInvoiceSelfAdminListVBAResponse]
  describe 'update_prem_invoice_gateway_actuals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
