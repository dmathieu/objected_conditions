# encoding: UTF-8
require "rubygems"
require "bundler"
Bundler.setup

#
# The rspec tasks
#
require 'rspec/core'
require 'rspec/core/rake_task'
task :default => :spec
RSpec::Core::RakeTask.new(:spec)

#
# Jeweler
#
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "objected_conditions"
    gemspec.summary = "Object Oriented Conditions"
    gemspec.description = "Object Oriented Conditions"
    gemspec.email = "42@dmathieu.com"
    gemspec.homepage = "http://github.com/dmathieu/objected_conditions"
    gemspec.authors = ["Damien MATHIEU"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end