=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CheckEditDetailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CheckEditDetailsApi' do
  before do
    # run before each test
    @api_instance = Vba::CheckEditDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CheckEditDetailsApi' do
    it 'should create an instance of CheckEditDetailsApi' do
      expect(@api_instance).to be_instance_of(Vba::CheckEditDetailsApi)
    end
  end

  # unit tests for create_check_edit_set_detail
  # Create CheckEditSetDetail
  # Creates a new CheckEditSetDetail
  # @param vbasoftware_database Target database
  # @param check_edit_set_header_key CheckEditSetHeader Key
  # @param check_edit_key CheckEdit Key
  # @param check_edit_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [CheckEditSetDetailVBAResponse]
  describe 'create_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_check_edit_set_detail
  # Delete CheckEditSetDetail
  # Deletes an CheckEditSetDetail
  # @param vbasoftware_database Target database
  # @param check_edit_set_header_key CheckEditSetHeader Key
  # @param check_edit_key CheckEdit Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_check_edit_set_detail
  # Get CheckEditSetDetail
  # Gets CheckEditSetDetail
  # @param vbasoftware_database Target database
  # @param check_edit_set_header_key CheckEditSetHeader Key
  # @param check_edit_key CheckEdit Key
  # @param [Hash] opts the optional parameters
  # @return [CheckEditSetDetailVBAResponse]
  describe 'get_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_check_edit_set_detail
  # List CheckEditSetDetail
  # Lists all CheckEditSetDetail
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CheckEditSetDetailListVBAResponse]
  describe 'list_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_check_edit_set_detail
  # Create or Update Batch CheckEditSetDetail
  # Create or Update multiple CheckEditSetDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param check_edit_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_check_edit_set_detail
  # Update CheckEditSetDetail
  # Updates a specific CheckEditSetDetail.
  # @param vbasoftware_database Target database
  # @param check_edit_set_header_key CheckEditSetHeader Key
  # @param check_edit_key CheckEdit Key
  # @param check_edit_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [CheckEditSetDetailVBAResponse]
  describe 'update_check_edit_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
