require 'rubygems'
require 'bundler'
Bundler.require

require 'fakeweb'
require 'rack/test'
require 'rspec'

require File.join(File.dirname(__FILE__), 'application.rb')


set :environment, :test

# Rspec.configure do |config|
  # config.before(:each) do
  # end
# end