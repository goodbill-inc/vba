=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SubscriberIDCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriberIDCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::SubscriberIDCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriberIDCodesApi' do
    it 'should create an instance of SubscriberIDCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::SubscriberIDCodesApi)
    end
  end

  # unit tests for create_subscriber_id_code
  # Create SubscriberIDCode
  # Creates a new SubscriberIDCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param subscriber_id_code 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberIDCodeVBAResponse]
  describe 'create_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscriber_id_code
  # Delete SubscriberIDCode
  # Deletes an SubscriberIDCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param i_d_code ID Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscriber_id_code
  # Get SubscriberIDCode
  # Gets SubscriberIDCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param i_d_code ID Code
  # @param [Hash] opts the optional parameters
  # @return [SubscriberIDCodeVBAResponse]
  describe 'get_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscriber_id_code
  # List SubscriberIDCode
  # Lists all SubscriberIDCode for the given subscriberID
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SubscriberIDCodeListVBAResponse]
  describe 'list_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_subscriber_id_code
  # Create or Update Batch SubscriberIDCode
  # Create or Update multiple SubscriberIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param subscriber_id_code 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscriber_id_code
  # Update SubscriberIDCode
  # Updates a specific SubscriberIDCode.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param i_d_code ID Code
  # @param subscriber_id_code 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberIDCodeVBAResponse]
  describe 'update_subscriber_id_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
