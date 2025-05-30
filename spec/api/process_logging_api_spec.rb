=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ProcessLoggingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProcessLoggingApi' do
  before do
    # run before each test
    @api_instance = Vba::ProcessLoggingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcessLoggingApi' do
    it 'should create an instance of ProcessLoggingApi' do
      expect(@api_instance).to be_instance_of(Vba::ProcessLoggingApi)
    end
  end

  # unit tests for create_vba_process_log
  # Create VBAProcessLog
  # Creates a new VBAProcessLog
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param vba_process_log 
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessLogVBAResponse]
  describe 'create_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_vba_process_log
  # Delete VBAProcessLog
  # Deletes an VBAProcessLog
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param v_ba_process_log_key VBAProcessLog Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_vba_process_log
  # Get VBAProcessLog
  # Gets VBAProcessLog
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param v_ba_process_log_key VBAProcessLog Key
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessLogVBAResponse]
  describe 'get_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_vba_process_log
  # List VBAProcessLog
  # List VBAProcessLogs or the given VBAProcessKey and VBAProcessType
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessLogListVBAResponse]
  describe 'list_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_vba_process_log
  # Update Batch VBAProcessLog
  # Updates or Creates multiple VBAProcessLogs
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param vba_process_log 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_vba_process_log
  # Update VBAProcessLog
  # Updates a specific VBAProcessLog.
  # @param vbasoftware_database Target database
  # @param v_ba_process_key VBAProcess Key
  # @param v_ba_process_type VBAProcess Type
  # @param v_ba_process_log_key VBAProcessLog Key
  # @param vba_process_log 
  # @param [Hash] opts the optional parameters
  # @return [VBAProcessLogVBAResponse]
  describe 'update_vba_process_log test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
