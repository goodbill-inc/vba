=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @api_instance = Vba::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@api_instance).to be_instance_of(Vba::ContactsApi)
    end
  end

  # unit tests for create_contact
  # Create Contact
  # Creates a new Contact
  # @param vbasoftware_database Target database
  # @param contact 
  # @param [Hash] opts the optional parameters
  # @return [ContactVBAResponse]
  describe 'create_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_contact
  # Delete Contact
  # Deletes an Contact
  # @param vbasoftware_database Target database
  # @param contact_key Contact Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_contact
  # Get Contact
  # Gets Contact
  # @param vbasoftware_database Target database
  # @param contact_key Contact Key
  # @param [Hash] opts the optional parameters
  # @return [ContactVBAResponse]
  describe 'get_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_contact
  # List Contact
  # Lists all Contact
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ContactListVBAResponse]
  describe 'list_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_contact
  # Create or Update Batch Contact
  # Create or Update multiple Contact at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param contact 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_contact
  # Update Contact
  # Updates a specific Contact.
  # @param vbasoftware_database Target database
  # @param contact_key Contact Key
  # @param contact 
  # @param [Hash] opts the optional parameters
  # @return [ContactVBAResponse]
  describe 'update_contact test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
