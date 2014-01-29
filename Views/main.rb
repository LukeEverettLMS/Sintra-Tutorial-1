require 'rubygems'
require 'sinatra'
require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/reports.db")
class Note
	include DataMapper::Resource
	property :id, Serial
	property :localbackup, Boolean, :required => true, :default => false
	property :sharepointcreated, Boolean, :required => true, :default => false
	property :sharepointused, Boolean, :required => true, :default => false
	property :emailbackup, Boolean, :required => true, :default => false
	property :migrationtimeline, Text
	property :reportmonth, Text
	property :reportyear, Text
	property :created_at, DateTime
	property :updated_at, DateTime
end
DataMapper.finalize.auto_upgrade!