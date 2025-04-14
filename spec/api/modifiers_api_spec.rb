=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ModifiersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ModifiersApi' do
  before do
    # run before each test
    @api_instance = Vba::ModifiersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ModifiersApi' do
    it 'should create an instance of ModifiersApi' do
      expect(@api_instance).to be_instance_of(Vba::ModifiersApi)
    end
  end

  # unit tests for create_modifier
  # Create Modifier
  # Creates a new Modifier
  # @param vbasoftware_database Target database
  # @param modifier 
  # @param [Hash] opts the optional parameters
  # @return [ModifierVBAResponse]
  describe 'create_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_modifier
  # Delete Modifier
  # Deletes an Modifier
  # @param vbasoftware_database Target database
  # @param modifier_code Modifier Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_modifier
  # Get Modifier
  # Gets Modifier
  # @param vbasoftware_database Target database
  # @param modifier_code Modifier Code
  # @param [Hash] opts the optional parameters
  # @return [ModifierVBAResponse]
  describe 'get_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_modifier
  # List Modifier
  # Lists all Modifier
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ModifierListVBAResponse]
  describe 'list_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_modifier
  # Create or Update Batch Modifier
  # Create or Update multiple Modifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param modifier 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_modifier
  # Update Modifier
  # Updates a specific Modifier.
  # @param vbasoftware_database Target database
  # @param modifier_code Modifier Code
  # @param modifier 
  # @param [Hash] opts the optional parameters
  # @return [ModifierVBAResponse]
  describe 'update_modifier test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
