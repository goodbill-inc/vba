=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::VBAInterfaceStatusesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VBAInterfaceStatusesApi' do
  before do
    # run before each test
    @api_instance = Vba::VBAInterfaceStatusesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VBAInterfaceStatusesApi' do
    it 'should create an instance of VBAInterfaceStatusesApi' do
      expect(@api_instance).to be_instance_of(Vba::VBAInterfaceStatusesApi)
    end
  end

  # unit tests for create_vba_interface_status
  # Create VBAInterfaceStatus
  # Creates a new VBAInterfaceStatus
  # @param vbasoftware_database Target database
  # @param vba_interface_status 
  # @param [Hash] opts the optional parameters
  # @return [VBAInterfaceStatusVBAResponse]
  describe 'create_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_vba_interface_status
  # Delete VBAInterfaceStatus
  # Deletes an VBAInterfaceStatus
  # @param vbasoftware_database Target database
  # @param v_ba_interface_status VBAInterface Status
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_vba_interface_status
  # Get VBAInterfaceStatus
  # Gets VBAInterfaceStatus
  # @param vbasoftware_database Target database
  # @param v_ba_interface_status VBAInterface Status
  # @param [Hash] opts the optional parameters
  # @return [VBAInterfaceStatusVBAResponse]
  describe 'get_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_vba_interface_status
  # List VBAInterfaceStatus
  # Lists all VBAInterfaceStatus
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [VBAInterfaceStatusListVBAResponse]
  describe 'list_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_vba_interface_status
  # Create or Update Batch VBAInterfaceStatus
  # Create or Update multiple VBAInterfaceStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param vba_interface_status 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_vba_interface_status
  # Update VBAInterfaceStatus
  # Updates a specific VBAInterfaceStatus.
  # @param vbasoftware_database Target database
  # @param v_ba_interface_status VBAInterface Status
  # @param vba_interface_status 
  # @param [Hash] opts the optional parameters
  # @return [VBAInterfaceStatusVBAResponse]
  describe 'update_vba_interface_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
