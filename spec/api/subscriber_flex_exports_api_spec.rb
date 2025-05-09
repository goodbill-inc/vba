=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SubscriberFlexExportsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriberFlexExportsApi' do
  before do
    # run before each test
    @api_instance = Vba::SubscriberFlexExportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriberFlexExportsApi' do
    it 'should create an instance of SubscriberFlexExportsApi' do
      expect(@api_instance).to be_instance_of(Vba::SubscriberFlexExportsApi)
    end
  end

  # unit tests for create_subscriber_flex_exported
  # Create SubscriberFlexExported
  # Creates a new SubscriberFlexExported
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param subscriber_flex_exported 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberFlexExportedVBAResponse]
  describe 'create_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscriber_flex_exported
  # Delete SubscriberFlexExported
  # Deletes an SubscriberFlexExported
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param subscriber_flex_exported_key SubscriberFlexExported Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscriber_flex_exported
  # Get SubscriberFlexExported
  # Gets SubscriberFlexExported
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param subscriber_flex_exported_key SubscriberFlexExported Key
  # @param [Hash] opts the optional parameters
  # @return [SubscriberFlexExportedVBAResponse]
  describe 'get_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscriber_flex_exported
  # List SubscriberFlexExported
  # Lists all SubscriberFlexExported for the given subscriberID and groupID and planID and calendarYear and effectiveDate
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [SubscriberFlexExportedListVBAResponse]
  describe 'list_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_subscriber_flex_exported
  # Create or Update Batch SubscriberFlexExported
  # Create or Update multiple SubscriberFlexExported at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param subscriber_flex_exported 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscriber_flex_exported
  # Update SubscriberFlexExported
  # Updates a specific SubscriberFlexExported.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param group_id Group ID
  # @param plan_id Plan ID
  # @param calendar_year Calendar Year
  # @param effective_date Effective Date
  # @param subscriber_flex_exported_key SubscriberFlexExported Key
  # @param subscriber_flex_exported 
  # @param [Hash] opts the optional parameters
  # @return [SubscriberFlexExportedVBAResponse]
  describe 'update_subscriber_flex_exported test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
