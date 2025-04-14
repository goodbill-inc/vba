=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ChecksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChecksApi' do
  before do
    # run before each test
    @api_instance = Vba::ChecksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChecksApi' do
    it 'should create an instance of ChecksApi' do
      expect(@api_instance).to be_instance_of(Vba::ChecksApi)
    end
  end

  # unit tests for create_checks
  # Create Checks
  # Creates a new Checks
  # @param vbasoftware_database Target database
  # @param checks 
  # @param [Hash] opts the optional parameters
  # @return [ChecksVBAResponse]
  describe 'create_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_withhold_check_batch
  # Create Withhold Check Run
  # Takes Claims with a withhold amount and creates new claims to make payments for that withhold amount.
  # @param vbasoftware_database Target database
  # @param accounting_withhold_check_config 
  # @param [Hash] opts the optional parameters
  # @return [Int32VBAResponse]
  describe 'create_withhold_check_batch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_checks
  # Delete Checks
  # Deletes an Checks
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_checks
  # Get Checks
  # Gets Checks
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param [Hash] opts the optional parameters
  # @return [ChecksVBAResponse]
  describe 'get_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_name_on_check
  # Get Name and Address Information
  # Using Send Check To and a dynamic Pay To ID, get the delivery information for a potential check.
  # @param vbasoftware_database Target database
  # @param funding_name_on_check 
  # @param [Hash] opts the optional parameters
  # @return [FundingNameOnCheckVBAResponse]
  describe 'get_name_on_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_checks
  # List Checks
  # Lists all Checks
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ChecksListVBAResponse]
  describe 'list_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for process_checks
  # Process Checks
  # Initiates the process of Check Processing. If the request is valid, the system will generate the necessary actions to process checks and respond with a success status code of 202 Accepted, along with the generated process key.
  # @param vbasoftware_database Target database
  # @param funding_process_check 
  # @param [Hash] opts the optional parameters
  # @return [Int32VBAResponse]
  describe 'process_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for undo_void_check
  # Undo Void Check
  # Undo a previously voided check by Check ID.  Returns the VBAProcess Key for log review and verification.
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param [Hash] opts the optional parameters
  # @return [Int32VBAResponse]
  describe 'undo_void_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_checks
  # Create or Update Batch Checks
  # Create or Update multiple Checks at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param checks 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_checks
  # Update Checks
  # Updates a specific Checks.
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param checks 
  # @param [Hash] opts the optional parameters
  # @return [ChecksVBAResponse]
  describe 'update_checks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for void_check
  # Void Check
  # Voids an existing Check
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param funding_void_check 
  # @param [Hash] opts the optional parameters
  # @return [ChecksVBAResponse]
  describe 'void_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for void_distribution_check
  # Void Premium Distribution Check
  # Voids a Premium Distribution Check by Check ID and all associated distribution records.
  # @param vbasoftware_database Target database
  # @param check_id Check ID
  # @param [Hash] opts the optional parameters
  # @return [ChecksVBAResponse]
  describe 'void_distribution_check test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
