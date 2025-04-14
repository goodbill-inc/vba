=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::VBAGatewaySubscriptionDetailApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VBAGatewaySubscriptionDetailApi' do
  before do
    # run before each test
    @api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VBAGatewaySubscriptionDetailApi' do
    it 'should create an instance of VBAGatewaySubscriptionDetailApi' do
      expect(@api_instance).to be_instance_of(Vba::VBAGatewaySubscriptionDetailApi)
    end
  end

  # unit tests for create_vba_gateway_subscription_detail
  # Create VBAGatewaySubscriptionDetail
  # Creates a new VBAGatewaySubscriptionDetail
  # @param vbasoftware_database Target database
  # @param vba_gateway_subscription_detail 
  # @param [Hash] opts the optional parameters
  # @return [VBAGatewaySubscriptionDetailVBAResponse]
  describe 'create_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_vba_gateway_subscription_detail
  # Delete VBAGatewaySubscriptionDetail
  # Deletes an VBAGatewaySubscriptionDetail
  # @param vbasoftware_database Target database
  # @param vba_gateway_subscription_detail_key VBAGatewaySubscriptionDetail Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_vba_gateway_subscription_detail
  # Get VBAGatewaySubscriptionDetail
  # Gets VBAGatewaySubscriptionDetail
  # @param vbasoftware_database Target database
  # @param vba_gateway_subscription_detail_key VBAGatewaySubscriptionDetail Key
  # @param [Hash] opts the optional parameters
  # @return [VBAGatewaySubscriptionDetailVBAResponse]
  describe 'get_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_vba_gateway_subscription_detail
  # List VBAGatewaySubscriptionDetail
  # Lists all VBAGatewaySubscriptionDetail
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [VBAGatewaySubscriptionDetailListVBAResponse]
  describe 'list_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_vba_gateway_subscription_detail
  # Create or Update Batch VBAGatewaySubscriptionDetail
  # Create or Update multiple VBAGatewaySubscriptionDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param vba_gateway_subscription_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_vba_gateway_subscription_detail
  # Update VBAGatewaySubscriptionDetail
  # Updates a specific VBAGatewaySubscriptionDetail.
  # @param vbasoftware_database Target database
  # @param vba_gateway_subscription_detail_key VBAGatewaySubscriptionDetail Key
  # @param vba_gateway_subscription_detail 
  # @param [Hash] opts the optional parameters
  # @return [VBAGatewaySubscriptionDetailVBAResponse]
  describe 'update_vba_gateway_subscription_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
