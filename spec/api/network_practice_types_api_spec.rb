=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::NetworkPracticeTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NetworkPracticeTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::NetworkPracticeTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NetworkPracticeTypesApi' do
    it 'should create an instance of NetworkPracticeTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::NetworkPracticeTypesApi)
    end
  end

  # unit tests for create_network_practice_type
  # Create NetworkPracticeType
  # Creates a new NetworkPracticeType
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param network_practice_type 
  # @param [Hash] opts the optional parameters
  # @return [NetworkPracticeTypeVBAResponse]
  describe 'create_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_network_practice_type
  # Delete NetworkPracticeType
  # Deletes an NetworkPracticeType
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param practice_type Practice Type
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_network_practice_type
  # Get NetworkPracticeType
  # Gets NetworkPracticeType
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param practice_type Practice Type
  # @param effective_date Effective Date
  # @param [Hash] opts the optional parameters
  # @return [NetworkPracticeTypeVBAResponse]
  describe 'get_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_network_practice_type
  # List NetworkPracticeType
  # Lists all NetworkPracticeType for the given networkID
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [NetworkPracticeTypeListVBAResponse]
  describe 'list_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_network_practice_type
  # Create or Update Batch NetworkPracticeType
  # Create or Update multiple NetworkPracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param network_practice_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_network_practice_type
  # Update NetworkPracticeType
  # Updates a specific NetworkPracticeType.
  # @param vbasoftware_database Target database
  # @param network_id Network ID
  # @param practice_type Practice Type
  # @param effective_date Effective Date
  # @param network_practice_type 
  # @param [Hash] opts the optional parameters
  # @return [NetworkPracticeTypeVBAResponse]
  describe 'update_network_practice_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
