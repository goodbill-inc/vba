=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::SecurityFieldSetDetailsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SecurityFieldSetDetailsApi' do
  before do
    # run before each test
    @api_instance = Vba::SecurityFieldSetDetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecurityFieldSetDetailsApi' do
    it 'should create an instance of SecurityFieldSetDetailsApi' do
      expect(@api_instance).to be_instance_of(Vba::SecurityFieldSetDetailsApi)
    end
  end

  # unit tests for create_security_field_set_detail
  # Create SecurityFieldSetDetail
  # Creates a new SecurityFieldSetDetail
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param security_field_id SecurityField ID
  # @param security_field_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldSetDetailVBAResponse]
  describe 'create_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_security_field_set_detail
  # Delete SecurityFieldSetDetail
  # Deletes an SecurityFieldSetDetail
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param security_field_id SecurityField ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_security_field_set_detail
  # Get SecurityFieldSetDetail
  # Gets SecurityFieldSetDetail
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param security_field_id SecurityField ID
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldSetDetailVBAResponse]
  describe 'get_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_security_field_set_detail
  # List SecurityFieldSetDetail
  # Lists all SecurityFieldSetDetail for the given SecurityFieldSet_ID
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @return [SecurityFieldSetDetailListVBAResponse]
  describe 'list_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_security_field_set_detail
  # Create or Update Batch SecurityFieldSetDetail
  # Create or Update multiple SecurityFieldSetDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param security_field_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_security_field_set_detail
  # Update SecurityFieldSetDetail
  # Updates a specific SecurityFieldSetDetail.
  # @param vbasoftware_database Target database
  # @param security_field_set_id SecurityFieldSet ID
  # @param security_field_id SecurityField ID
  # @param security_field_set_detail 
  # @param [Hash] opts the optional parameters
  # @return [SecurityFieldSetDetailVBAResponse]
  describe 'update_security_field_set_detail test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
