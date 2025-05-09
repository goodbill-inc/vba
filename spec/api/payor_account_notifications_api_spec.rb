=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PayorAccountNotificationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayorAccountNotificationsApi' do
  before do
    # run before each test
    @api_instance = Vba::PayorAccountNotificationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayorAccountNotificationsApi' do
    it 'should create an instance of PayorAccountNotificationsApi' do
      expect(@api_instance).to be_instance_of(Vba::PayorAccountNotificationsApi)
    end
  end

  # unit tests for create_payor_account_notify
  # Create PayorAccountNotify
  # Creates a new PayorAccountNotify
  # @param vbasoftware_database Target database
  # @param payor_account_notify 
  # @param [Hash] opts the optional parameters
  # @return [PayorAccountNotifyVBAResponse]
  describe 'create_payor_account_notify test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_payor_account_notify
  # Delete PayorAccountNotify
  # Deletes an PayorAccountNotify
  # @param vbasoftware_database Target database
  # @param payor_account_key Payor Account Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_payor_account_notify test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payor_account_notify
  # Get PayorAccountNotify
  # Gets PayorAccountNotify
  # @param vbasoftware_database Target database
  # @param payor_account_key Payor Account Key
  # @param user_id User ID
  # @param [Hash] opts the optional parameters
  # @return [PayorAccountNotifyVBAResponse]
  describe 'get_payor_account_notify test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_payor_account_notify
  # List PayorAccountNotify
  # Lists all PayorAccountNotify
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PayorAccountNotifyListVBAResponse]
  describe 'list_payor_account_notify test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_payor_account_notify
  # Create Batch PayorAccountNotify
  # Create or Update multiple PayorAccountNotify at once.  If the entity does not exist, it will be created.  Updates are not allowed. If the entity does exist, an error message will be returned with the resultset.
  # @param vbasoftware_database Target database
  # @param payor_account_notify 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_payor_account_notify test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
