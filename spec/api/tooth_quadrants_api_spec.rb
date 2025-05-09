=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ToothQuadrantsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ToothQuadrantsApi' do
  before do
    # run before each test
    @api_instance = Vba::ToothQuadrantsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ToothQuadrantsApi' do
    it 'should create an instance of ToothQuadrantsApi' do
      expect(@api_instance).to be_instance_of(Vba::ToothQuadrantsApi)
    end
  end

  # unit tests for create_tooth_quadrant
  # Create ToothQuadrant
  # Creates a new ToothQuadrant
  # @param vbasoftware_database Target database
  # @param tooth_quadrant 
  # @param [Hash] opts the optional parameters
  # @return [ToothQuadrantVBAResponse]
  describe 'create_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tooth_quadrant
  # Delete ToothQuadrant
  # Deletes an ToothQuadrant
  # @param vbasoftware_database Target database
  # @param quadrant Quadrant
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tooth_quadrant
  # Get ToothQuadrant
  # Gets ToothQuadrant
  # @param vbasoftware_database Target database
  # @param quadrant Quadrant
  # @param [Hash] opts the optional parameters
  # @return [ToothQuadrantVBAResponse]
  describe 'get_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_tooth_quadrant
  # List ToothQuadrant
  # Lists all ToothQuadrant
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ToothQuadrantListVBAResponse]
  describe 'list_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_tooth_quadrant
  # Create or Update Batch ToothQuadrant
  # Create or Update multiple ToothQuadrant at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param tooth_quadrant 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_tooth_quadrant
  # Update ToothQuadrant
  # Updates a specific ToothQuadrant.
  # @param vbasoftware_database Target database
  # @param quadrant Quadrant
  # @param tooth_quadrant 
  # @param [Hash] opts the optional parameters
  # @return [ToothQuadrantVBAResponse]
  describe 'update_tooth_quadrant test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
