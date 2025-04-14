=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::BillTypePlacesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BillTypePlacesApi' do
  before do
    # run before each test
    @api_instance = Vba::BillTypePlacesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BillTypePlacesApi' do
    it 'should create an instance of BillTypePlacesApi' do
      expect(@api_instance).to be_instance_of(Vba::BillTypePlacesApi)
    end
  end

  # unit tests for create_bill_type_place
  # Create BillTypePlace
  # Creates a new BillTypePlace
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param bill_type_place 
  # @param [Hash] opts the optional parameters
  # @return [BillTypePlaceVBAResponse]
  describe 'create_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_bill_type_place
  # Delete BillTypePlace
  # Deletes an BillTypePlace
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param place_of_service Place Of Service
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_bill_type_place
  # Get BillTypePlace
  # Gets BillTypePlace
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param place_of_service Place Of Service
  # @param [Hash] opts the optional parameters
  # @return [BillTypePlaceVBAResponse]
  describe 'get_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_bill_type_place
  # List BillTypePlace
  # Lists all BillTypePlace for the given typeOfBill
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [BillTypePlaceListVBAResponse]
  describe 'list_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_bill_type_place
  # Create or Update Batch BillTypePlace
  # Create or Update multiple BillTypePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param bill_type_place 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_bill_type_place
  # Update BillTypePlace
  # Updates a specific BillTypePlace.
  # @param vbasoftware_database Target database
  # @param type_of_bill Type Of Bill
  # @param place_of_service Place Of Service
  # @param bill_type_place 
  # @param [Hash] opts the optional parameters
  # @return [BillTypePlaceVBAResponse]
  describe 'update_bill_type_place test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
