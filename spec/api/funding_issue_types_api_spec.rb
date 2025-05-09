=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FundingIssueTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FundingIssueTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::FundingIssueTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FundingIssueTypesApi' do
    it 'should create an instance of FundingIssueTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::FundingIssueTypesApi)
    end
  end

  # unit tests for create_funding_issue_type
  # Create FundingIssueType
  # Creates a new FundingIssueType
  # @param vbasoftware_database Target database
  # @param funding_issue_type 
  # @param [Hash] opts the optional parameters
  # @return [FundingIssueTypeVBAResponse]
  describe 'create_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_funding_issue_type
  # Delete FundingIssueType
  # Deletes an FundingIssueType
  # @param vbasoftware_database Target database
  # @param issue_type Issue Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_funding_issue_type
  # Get FundingIssueType
  # Gets FundingIssueType
  # @param vbasoftware_database Target database
  # @param issue_type Issue Type
  # @param [Hash] opts the optional parameters
  # @return [FundingIssueTypeVBAResponse]
  describe 'get_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_funding_issue_type
  # List FundingIssueType
  # Lists all FundingIssueType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [FundingIssueTypeListVBAResponse]
  describe 'list_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_funding_issue_type
  # Create or Update Batch FundingIssueType
  # Create or Update multiple FundingIssueType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param funding_issue_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_funding_issue_type
  # Update FundingIssueType
  # Updates a specific FundingIssueType.
  # @param vbasoftware_database Target database
  # @param issue_type Issue Type
  # @param funding_issue_type 
  # @param [Hash] opts the optional parameters
  # @return [FundingIssueTypeVBAResponse]
  describe 'update_funding_issue_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
