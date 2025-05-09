=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ToothChartsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ToothChartsApi' do
  before do
    # run before each test
    @api_instance = Vba::ToothChartsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ToothChartsApi' do
    it 'should create an instance of ToothChartsApi' do
      expect(@api_instance).to be_instance_of(Vba::ToothChartsApi)
    end
  end

  # unit tests for create_tooth_chart
  # Create ToothChart
  # Creates a new ToothChart
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param tooth_number Tooth Number
  # @param tooth_chart 
  # @param [Hash] opts the optional parameters
  # @return [ToothChartVBAResponse]
  describe 'create_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tooth_chart
  # Delete ToothChart
  # Deletes an ToothChart
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param tooth_number Tooth Number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tooth_chart
  # Get ToothChart
  # Gets ToothChart
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param tooth_number Tooth Number
  # @param [Hash] opts the optional parameters
  # @return [ToothChartVBAResponse]
  describe 'get_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_tooth_chart
  # List ToothChart
  # Lists all ToothChart for the given chartType
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ToothChartListVBAResponse]
  describe 'list_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_tooth_chart
  # Create or Update Batch ToothChart
  # Create or Update multiple ToothChart at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param tooth_chart 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_tooth_chart
  # Update ToothChart
  # Updates a specific ToothChart.
  # @param vbasoftware_database Target database
  # @param chart_type Chart Type
  # @param tooth_number Tooth Number
  # @param tooth_chart 
  # @param [Hash] opts the optional parameters
  # @return [ToothChartVBAResponse]
  describe 'update_tooth_chart test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
