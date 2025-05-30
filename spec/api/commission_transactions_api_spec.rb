=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CommissionTransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommissionTransactionsApi' do
  before do
    # run before each test
    @api_instance = Vba::CommissionTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommissionTransactionsApi' do
    it 'should create an instance of CommissionTransactionsApi' do
      expect(@api_instance).to be_instance_of(Vba::CommissionTransactionsApi)
    end
  end

  # unit tests for create_commission_transaction
  # Create CommissionTransaction
  # Creates a new CommissionTransaction
  # @param vbasoftware_database Target database
  # @param commission_transaction 
  # @param [Hash] opts the optional parameters
  # @return [CommissionTransactionVBAResponse]
  describe 'create_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_commission_transaction
  # Delete CommissionTransaction
  # Deletes an CommissionTransaction
  # @param vbasoftware_database Target database
  # @param comm_trans_key CommissionTransaction Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_commission_transaction
  # Get CommissionTransaction
  # Gets CommissionTransaction
  # @param vbasoftware_database Target database
  # @param comm_trans_key CommissionTransaction Key
  # @param [Hash] opts the optional parameters
  # @return [CommissionTransactionVBAResponse]
  describe 'get_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_commission_transaction
  # List CommissionTransaction
  # Lists all CommissionTransaction
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CommissionTransactionListVBAResponse]
  describe 'list_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_commission_transaction
  # Create or Update Batch CommissionTransaction
  # Create or Update multiple CommissionTransaction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param commission_transaction 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_commission_transaction
  # Update CommissionTransaction
  # Updates a specific CommissionTransaction.
  # @param vbasoftware_database Target database
  # @param comm_trans_key CommissionTransaction Key
  # @param commission_transaction 
  # @param [Hash] opts the optional parameters
  # @return [CommissionTransactionVBAResponse]
  describe 'update_commission_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
