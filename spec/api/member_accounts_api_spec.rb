=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberAccountsApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberAccountsApi' do
    it 'should create an instance of MemberAccountsApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberAccountsApi)
    end
  end

  # unit tests for create_member_account
  # Create MemberAccount
  # Creates a new MemberAccount
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountVBAResponse]
  describe 'create_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_account
  # Delete MemberAccount
  # Deletes an MemberAccount
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_account
  # Get MemberAccount
  # Gets MemberAccount
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountVBAResponse]
  describe 'get_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_account
  # List MemberAccount
  # Lists all MemberAccount for the given member
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberAccountListVBAResponse]
  describe 'list_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_account
  # Create or Update Batch MemberAccount
  # Create or Update multiple MemberAccount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_account
  # Update MemberAccount
  # Updates a specific MemberAccount.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_account_key MemberAccount Key
  # @param member_account 
  # @param [Hash] opts the optional parameters
  # @return [MemberAccountVBAResponse]
  describe 'update_member_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
